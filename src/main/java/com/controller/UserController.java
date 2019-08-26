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
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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
        User user= userService.login(username,password);
        Admit admit=admitService.AdmitLogin(username,password);
        if (admit==null) {
            if (user != null) {
                model.addAttribute("msg", "成功登录");
                request.getSession().setAttribute("User", user);
                return "home";
            }
        }else {
            model.addAttribute("msg", "超管登录");
            request.getSession().setAttribute("Admit", admit);
            return "admitHome";
        }
        model.addAttribute("msg","用户名密码错误");
        return "error";
    }
    @RequestMapping("/register")
    public String register(User user, Model model, HttpServletRequest request) {

        if (userService.saveUser(user)>0){
            model.addAttribute("msg","注册成功");
            System.out.println("注册对象："+user);
            return "home";
        }
        model.addAttribute("msg","用户名密码错误");
        return "error";
    }
    @RequestMapping("/logout")
    public String logout( HttpServletRequest request) {
        if (request.getSession().getAttribute("Admit")==null) {
            if (request.getSession().getAttribute("User") != null) {
                request.getSession().removeAttribute("User");
                return "home";
            }
        }else {
            request.getSession().removeAttribute("Admit");
            return "home";
        }
        return "error";
    }
    @RequestMapping("/index")
    public String index(){
         return "home";
    }

    @RequestMapping("/batchDelete")
    @ResponseBody
    public Msg batchDelete(String ids){
        //批量删除
        List<Integer> del_ids = new ArrayList<>();
        String[] str_ids = ids.split("-");
        //组装id的集合
        for (String string : str_ids) {
            del_ids.add(Integer.parseInt(string));
        }
        userService.deleteBatch(del_ids);
        return  Msg.success();
    }

    @RequestMapping("/batchUpdate")
    @ResponseBody
    public Msg updateAll(QueryVo queryVo) {
        List<User> users = queryVo.getUsers();
        for (User user : users) {
            userService.updateUser(user);
        }
        return Msg.success();
    }
    @RequestMapping("/users")
    @ResponseBody
    public Msg getUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn){
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 4);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<User> users = userService.getUsers();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        return  Msg.success().add("pageInfo",page);

    }
    @RequestMapping("/upload")
    public String uploadUserPic(MultipartFile file, Model model){
        String picName = UUID.randomUUID().toString();
        //获取上传文件的元素名字
        String name=file.getOriginalFilename();
        String extname=name.substring(name.lastIndexOf("."));
        //上传文件
        try {
//            file.transferTo(new File("F:/idea/spring_workspace/petHome/target/ssmcrud/animal/images/update/" +picName+extname));
            file.transferTo(new File("F:/idea/spring_workspace/petHome/src/main/webapp/animal/images/" +picName+extname));
        } catch (IOException e) {
            e.printStackTrace();
        }
        String filename=picName+extname;
        //存储数据库，只需要把filename写入数据库

        model.addAttribute("pic",filename);
        return "person";

    }
    @RequestMapping("/doUpload")
    public ModelAndView doUpload(MultipartFile pic ,HttpServletRequest request)
            throws IOException{
        //获取文件名以及文件大小，检测是否获得文件相关数据
        String fileName=pic.getOriginalFilename();
        long size=pic.getSize();
        System.out.println(fileName+"/"+size);
        //构建文件目标对象，这个对象对应的文件路径必须是存在的或者通过file对象自己创建
        File dest=new File("F:/idea/spring_workspace/petHome/src/main/webapp/animal/images/update/"+fileName);
        //transferto实现文件上传
        pic.transferTo(dest);
        //封装数据返回
        ModelAndView mv=new ModelAndView("person");
        mv.addObject("updateMsg", "上传成功！");
       User user= (User) request.getSession().getAttribute("User");
        userService.updatePic(fileName,user.getId());
        return mv;
    }

//
//    @RequestMapping("/users")
//    @ResponseBody
//    public Msg getUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn){
//        // 引入PageHelper分页插件
//        // 在查询之前只需要调用，传入页码，以及每页的大小
//        PageHelper.startPage(pn, 2);
//        // startPage后面紧跟的这个查询就是一个分页查询
//        List<User> users = userService.getUsers();
//        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
//        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
//        PageInfo page = new PageInfo(users, 3);
//        return  Msg.success().add("pageInfo",page);
//
//    }
//    @RequestMapping("/add")
//    @ResponseBody
//    public Msg saveUser(User user) {
//        if (userService.saveUser(user) > 0) {
//          return   Msg.success();
//        } else {
//         return Msg.fail();
//        }
//
//    }
//    @RequestMapping("/delete")
//    @ResponseBody
//    public Msg delete(Integer id){
//        if (userService.deleteUserById(id) > 0) {
//            return   Msg.success();
//        } else {
//            return Msg.fail();
//        }
//    }
//    @RequestMapping("/edit")
//    @ResponseBody
//    public Msg edit(Integer id){
//        User user=userService.getUserById(id);
//        if (user!=null) {
//          return   Msg.success().add("user",user);
//        } else {
//            return Msg.fail();
//        }
//    }
//
//    @RequestMapping("/update")
//    @ResponseBody
//    public Msg edit(User user){
//        if (userService.updateUser(user)>0) {
//            return   Msg.success().add("user",user);
//        } else {
//            return Msg.fail();
//        }
//    }
//
//    //批量删除
//    @RequestMapping("/batchDelete")
//    @ResponseBody
//    public Msg batchDelete(String ids){
//      //批量删除
//        List<Integer> del_ids = new ArrayList<>();
//        String[] str_ids = ids.split("-");
//        //组装id的集合
//        for (String string : str_ids) {
//            del_ids.add(Integer.parseInt(string));
//        }
//        userService.deleteBatch(del_ids);
//       return  Msg.success();
//    }
}
