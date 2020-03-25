package com.controller;

import com.entity.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mysql.cj.Session;
import com.service.AdoptInfoService;
import com.service.PetService;
import com.service.UserService;
import com.util.Msg;
import org.omg.PortableInterceptor.INACTIVE;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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
import java.text.SimpleDateFormat;
import java.util.Date;
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
    private AdoptInfoService adoptInfoService;
    @Autowired
    private PetService petService;

    @RequestMapping("/login")
    public String login(String username, String password, Model model, HttpServletRequest request) {
        User user = userService.login(username, password);
        //我要获取当前的日期
        Date date = new Date();
        //设置要获取到什么样的时间
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        //获取String类型的时间
        String createdate = sdf.format(date);
        request.getSession().setAttribute("NowTime", createdate);
        if (user != null) {
            model.addAttribute("msg", "成功登录");
//            //判断实名验证
//            Verification verification = userService.findVerificationByUserId(user.getId());
//            user.setVerification(verification);
            request.getSession().setAttribute("User", user);
            //暂时先给一个管理员权限
            Admit admit = new Admit();
            admit.setName("李白");
            admit.setPassword("123456");
            request.getSession().setAttribute("Admit", admit);
            return "index";
        }

        model.addAttribute("msg", "用户名或密码错误");
        return "login";
    }

    //注册
    @RequestMapping("/register")
    public String register(User user, Model model, HttpServletRequest request) {
        user.setPic("cat (9).png");//提供默认头像
        if (userService.saveUser(user) > 0) {
            model.addAttribute("msg", "注册成功");
            System.out.println("注册对象：" + user);
            return "login";
        }
        model.addAttribute("msg", "用户名密码错误");
        return "error";
    }

    //进入个人空间页面
    @RequestMapping("/personInfo")
    public String personInfo(@RequestParam(value = "id") Integer id, HttpServletRequest request) {
        System.out.println("id:" + id);
        User user = userService.getUserById(id);
        System.out.println(user);
        request.getSession().setAttribute("User", user);
        return "user_info";
    }

    //进入个人修改信息页
    @RequestMapping("/user_edit")
    public String personEdit() {
        return "user_edit";
    }

    //验证是否注册过此用户名
    @RequestMapping("/username_check")
    @ResponseBody
    public Msg registerAjax(@RequestParam(value = "username") String username) {
        User user = userService.findUserByusername(username);
        if (user != null) {
            return Msg.success();
        }
        return Msg.fail();
    }

    //注销登录
    @RequestMapping("/logout")
    public String logout(HttpServletRequest request) {
        if (request.getSession().getAttribute("Admit") == null) {
            if (request.getSession().getAttribute("User") != null) {
                System.out.println(request.getSession().getAttribute("User"));
                request.getSession().removeAttribute("User");
                System.out.println(request.getSession().getAttribute("User"));
                return "index";
            }
        } else {
            request.getSession().removeAttribute("Admit");
            return "index";
        }
        return "index";
    }

    @RequestMapping("/index")
    public String index() {

        return "index";
    }

    //修改用户密码
    @RequestMapping("/update_password")
    public String updatePassword(String password, int id, HttpServletRequest request) {
        System.out.println("password:" + password + "id:" + id);
        userService.updatePassword(password, id);
        request.setAttribute("msg", "修改成功");
        //将Sesion更新
        User user = (User) request.getSession().getAttribute("User");
        user.setPassword(password);
        request.getSession().setAttribute("User", user);
        return "user_info";
    }

    //对比输入的密码是否正确
    @RequestMapping("/check_password")
    @ResponseBody
    public Msg checkPassword(@RequestParam(value = "old_password") String old_password, @RequestParam(value = "id") int id) {
        User user = userService.getUserById(id);
        if (user.getPassword().equals(old_password)) {
            return Msg.success();
        } else {
            return Msg.fail();
        }
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
        System.out.println("头像：" + file);
        System.out.println("file:" + file);
        String picName = UUID.randomUUID().toString();//生成唯一识别码
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
        //修改数据库图片路径
        userService.updatePic(filename, user.getId());
        //重新设置User的session
        user.setPic(filename);
        request.getSession().setAttribute("User", user);
        model.addAttribute("pic", filename);
        System.out.println("上传成功");
        return Msg.success().add("pic", filename);

    }

    @ResponseBody
    @RequestMapping("/findUserByUsername")
    public Msg getUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn, @RequestParam(value = "username") String username) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 6);
        System.out.println("username:" + username);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<User> users = userService.likeByUsername(username);
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        return Msg.success().add("pageInfo", page);
    }

    //形成二维码
    @RequestMapping("/code")
    public void code(HttpServletRequest request, HttpServletResponse response) throws IOException {
//                ValidateCode vc = new ValidateCode(80, 30, 4, 9);
//        request.getSession().setAttribute("checkCode",vc.getCode());
//        vc.write(response.getOutputStream());
        response.setContentType("image/jpeg");
        HttpSession session = request.getSession();
        int width = 70;
        int height = 30;
        //设置浏览器不要缓存此图片
        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);

        //创建内存图形并获得图形上下文
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_BGR);
        Graphics g = image.getGraphics();
        /*
         * 产生随机验证码
         *
         *
         * 符表
         * */
        String chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
        char[] rands = new char[4];
        for (int i = 0; i < 4; i++) {
            int rand = (int) (Math.random() * 36);
            rands[i] = chars.charAt(rand);
        }
        /*
         * 产生图形
         * 画背景
         */
        g.setColor(new Color(0xDCDCDF));
        g.fillRect(0, 0, width, height);

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
        g.drawString("" + rands[0], 5, 18);
        g.drawString("" + rands[1], 20, 22);
        g.drawString("" + rands[2], 35, 24);
        g.drawString("" + rands[3], 50, 22);
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

    //验证二维码
    @RequestMapping("/checkCode")
    @ResponseBody
    public Msg checkCode(@RequestParam(value = "code") String code, HttpServletRequest request) {
        code = code.toLowerCase();
        String rands = (String) request.getSession().getAttribute("scode");
        rands = rands.toLowerCase();
        if (rands.equals(code)) {
            System.out.println("验证码成功");
            return Msg.success();
        }
        System.out.println("验证码失败");
        return Msg.fail();
    }

    //进入我的宠物页面
    @RequestMapping("/userPet")
    @ResponseBody
    public Msg userPet(@RequestParam(value = "id") int id, HttpServletRequest request) {
        System.out.println("跳进：" + id);
        Pet pet = adoptInfoService.findPetByUserId(id);
        System.out.println("pet" + pet);
        if (pet == null) {
            System.out.println("pet为空");
            return Msg.fail();
        } else {
            User user = petService.findMasterByPetId(pet.getId());
            pet.setMaster(user);
            request.getSession().setAttribute("UserPet", pet);
            return Msg.success();
        }

    }

    //实名验证判断
    @RequestMapping("/shiMing")
    @ResponseBody
    public Msg shiMing(@RequestParam(value = "id") Integer id) {
        if (id != null) {
            Verification verification = userService.findVerificationByUserId(id);
            User user = userService.getUserById(id);
            //如果用户已领养宠物
            if (user.getPet_id() != null) {
                Msg msg = new Msg();
                msg.setCode(300);
                return msg;
            }
            if (verification != null) {

                if (verification.getId_card() != null) {
                    return Msg.success();
                } else {

                }
            }
        }
        System.out.println("实名验证判断没传参数");
        return Msg.fail();
    }

    //跳转实名验证页面
    @RequestMapping("/toShiMing")
    public String toShiMing(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("User");
        if (user != null) {
            Verification verification = userService.findVerificationByUserId(user.getId());
            if (verification != null && verification.getId_card_photo() == null) {
                return "index";
            }
        }
        return "verification";
    }

    //实名验证保存
    @RequestMapping("/addShiMing")
    @ResponseBody
    public Msg addShiMing(Verification verification, HttpServletRequest request) {
        Verification verification2 = userService.findVerificationByUserId(verification.getUser_id());
        if (verification2 == null) {
            return Msg.fail().add("fail", "先上传身份证件照");
        } else {
            if (verification2.getId_card_photo() != null && null == verification2.getId_card() || null == verification2.getRelName() || null == verification2.getAddress() || null == verification2.getTel()) {
                if (userService.verificationAdd(verification) > 0) {
                    Verification verification1 = userService.findVerificationByUserId(verification.getUser_id());
                    //添加实名Session
                    User user = new User();
                    user.setVerification_id(verification1.getId());
                    user.setId(verification1.getUser_id());
                    if (userService.verificationToUsers(user) > 0) {
                        User user1 = userService.getUserById(verification1.getUser_id());
                        request.getSession().setAttribute("User", user1);
                        return Msg.success();
                    }
                }
            }
        }
        System.out.println("添加失败");
        return Msg.fail();
    }

    //获取所有的提醒，用分页显示
    @RequestMapping("/reminds")
    @ResponseBody
    public Msg getPets(@RequestParam(value = "pn", defaultValue = "1") Integer pn, @RequestParam(value = "user_id") Integer user_id, HttpServletRequest request) {
        if (user_id != null) {
            // 引入PageHelper分页插件
            // 在查询之前只需要调用，传入页码，以及每页的大小
            PageHelper.startPage(pn, 4);
            // startPage后面紧跟的这个查询就是一个分页查询
            //查询count总数
            int count = userService.findRemindCount(user_id);
            List<Remind> reminds = userService.findAllRemind(user_id);
            PageInfo page = new PageInfo(reminds, 3);
            return Msg.success().add("pageInfo", page).add("User_remind_count", count);
        } else {
            System.out.println("提醒没传参数");
        }
        return Msg.fail().add("pageInfo", null);
    }

    //提醒消息删除
    @RequestMapping("/remindDel")
    @ResponseBody
    public Msg remindDel(@RequestParam(value = "id") Integer id) {
        System.out.println("消息删除id" + id);
        Remind remind = userService.findRemindById(id);
        if (remind != null) {
            if (userService.UserRemindCountReduce(remind.getUser_id()) > 0) {
                if (userService.remindDel(id) > 0) {
                    System.out.println("消息删除成功" + id);
                    return Msg.success();
                }
            }
        }
        return Msg.fail();
    }

}
