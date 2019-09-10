package com.controller;

import com.entity.Admit;
import com.entity.User;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.AdmitService;
import com.service.UserService;
import com.util.Msg;
import com.util.QueryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 * @author yyh
 * @date 2019/8/13-10:01
 */

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;
    @Autowired
    private AdmitService admitService;


    @RequestMapping("/login")
    public String login(String username, String password, Model model, HttpServletRequest request) {
        User user = userService.login(username, password);
        Admit admit = admitService.AdmitLogin(username, password);
        if (admit == null) {
            if (user != null) {
                model.addAttribute("msg", "成功登录");
                request.getSession().setAttribute("User", user);
                request.getSession().setAttribute("UserPic", user.getPic());
                return "index";
            }
        } else {
            model.addAttribute("msg", "超管登录");
            request.getSession().setAttribute("Admit", admit);
            return "userMessage";
        }
        model.addAttribute("msg", "用户名密码错误");
        return "error";
    }

    @RequestMapping("/register")
    public String register(User user, Model model, HttpServletRequest request) {

        if (userService.saveUser(user) > 0) {
            model.addAttribute("msg", "注册成功");
            System.out.println("注册对象：" + user);
            return "index";
        }
        model.addAttribute("msg", "用户名密码错误");
        return "error";
    }

    @RequestMapping("/registerAjax")
    @ResponseBody
    public Msg registerAjax( @RequestParam(value = "username") String username) {
        System.out.println("username:"+username);
       User user=userService.findUserByusername(username);
       if (user!=null){
           return Msg.success();
       }
       return Msg.fail();
    }

    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        if (request.getSession().getAttribute("Admit") == null) {
            if (request.getSession().getAttribute("User") != null) {
                request.getSession().removeAttribute("User");
                return "index";
            }
        } else {
            request.getSession().removeAttribute("Admit");
            return "index";
        }
        return "error";
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/updateUser")
    public String updateUser(User user) {
        System.out.println("用户信息" + user);
        userService.updateUser(user);
        return "person";
    }

    @RequestMapping("/updateUserMessage")
    @ResponseBody
    public Msg updateUserMessage(User user, Model model, HttpServletRequest request) {

        if (userService.updateUser(user) > 0) {
            System.out.println("修改成功");
            request.getSession().setAttribute("User", user);
            model.addAttribute("updateUserMessage", "<font color='red'>修改成功<font>");
            return Msg.success();
        }
        return Msg.success();
    }

    @RequestMapping("/upload")
    @ResponseBody
    public Msg uploadUserPic(MultipartFile file, Model model, HttpServletRequest request) {
        String picName = UUID.randomUUID().toString();
        //获取上传文件的元素名字
        String name = file.getOriginalFilename();
        String extname = name.substring(name.lastIndexOf("."));
        //上传文件
        try {
//            file.transferTo(new File("F:/idea/spring_workspace/petHome/target/ssmcrud/animal/images/update/" +picName+extname));
            file.transferTo(new File("F:/MyUpload/" + picName + extname));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String filename = picName + extname;
        //存储数据库，只需要把filename写入数据库
        ModelAndView mv = new ModelAndView("person");
        mv.addObject("updateMsg", "上传成功！");
        User user = (User) request.getSession().getAttribute("User");
        userService.updatePic(filename, user.getId());
        request.getSession().setAttribute("UserPic", filename);
        model.addAttribute("pic", filename);
        System.out.println("上传成功");
        return Msg.success();

    }

//    @RequestMapping("/doUpload")
//    public ModelAndView doUpload(MultipartFile pic, HttpServletRequest request)
//            throws IOException {
//        //获取文件名以及文件大小，检测是否获得文件相关数据
//        System.out.println("pic" + pic);
//        String fileName = pic.getOriginalFilename();
//        long size = pic.getSize();
//        System.out.println(fileName + "/" + size);
//        //构建文件目标对象，这个对象对应的文件路径必须是存在的或者通过file对象自己创建
//        File dest = new File("F:/MyUpload/" + fileName);
////        File dest1=new File("F:/idea/spring_workspace/petHome/target/ssmcrud/animal/images/update/"+fileName);
////        //transferto实现文件上传
////        pic.transferTo(dest1);
//        pic.transferTo(dest);
//        //封装数据返回
//        ModelAndView mv = new ModelAndView("person");
//        mv.addObject("updateMsg", "上传成功！");
//        User user = (User) request.getSession().getAttribute("User");
//        userService.updatePic(fileName, user.getId());
//        return mv;
//    }


    @ResponseBody
    @RequestMapping("/findUserByUsername")
    public Msg getUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn, @RequestParam(value = "username") String username) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 6);
        System.out.println("username:" + username);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<User> users = userService.findUserByUsername(username);
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        return Msg.success().add("pageInfo", page);
    }
    @RequestMapping("/code")
//    @ResponseBody
    public void code(HttpServletRequest request, HttpServletResponse response) throws IOException {
//                ValidateCode vc = new ValidateCode(80, 30, 4, 9);
//        request.getSession().setAttribute("checkCode",vc.getCode());
//        vc.write(response.getOutputStream());
        response.setContentType("image/jpeg");
        HttpSession session = request.getSession();
        int width = 60;
        int height = 20;
        //设置浏览器不要缓存此图片
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        //创建内存图形并获得图形上下文
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_BGR);
        Graphics g = image.getGraphics();
        /*
         * 产生随机验证码
         * 定义验证码的字符表
         * */
        String chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        char[] rands = new char[4];
        for (int i = 0; i < 4; i++) {
            int rand = (int)(Math.random()*36);
            rands[i] = chars.charAt(rand);
        }
        /*
         * 产生图形
         * 画背景
         */
        g.setColor(new Color(0xDCDCDF));
        g.fillRect(0,0,width,height);

        /*
         * 随机产生120个干扰点
         * */
        for (int i = 0; i < 120; i++) {
            int x = (int) (Math.random() * width);
            int y = (int) (Math.random() * height);
            int red = (int) (Math.random() * 255);
            int green = (int) (Math.random() * 255);
            int blue = (int) (Math.random() * 255);
            g.setColor(new Color(red, green, blue));
            g.drawOval(x, y, 1, 0);
        }
        g.setColor(Color.BLACK);
        g.setFont(new Font(null, Font.ITALIC | Font.BOLD, 18));
        //在不同高度输出验证码的不同字符
        g.drawString("" + rands[0], 1, 17);
        g.drawString("" + rands[1], 16, 15);
        g.drawString("" + rands[2], 31, 18);
        g.drawString("" + rands[3], 46, 16);
        g.dispose();

        //将图像传到客户端
        ServletOutputStream sos = response.getOutputStream();
        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write(image, "JPEG", baos);
        byte[] buffer = baos.toByteArray();
        response.setContentLength(buffer.length);
        sos.write(buffer);
        baos.close();
        sos.close();

        session.setAttribute("scode", new String(rands));
//        return Msg.success();
    }
    @RequestMapping("/checkCode")
    @ResponseBody
    public Msg checkCode (@RequestParam(value = "code")String[] code,HttpServletRequest request){
        System.out.println("code:"+code);
       String[] rands= (String[]) request.getSession().getAttribute("scode");
        System.out.println("rands:"+rands);
        if (code== rands){
            System.out.println("验证码成功");
            return Msg.success();
        }
        return Msg.fail();
    }
}
