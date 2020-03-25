package com.controller;

import com.entity.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.*;

import com.util.Msg;
import com.util.QueryVo;
import jdk.nashorn.internal.objects.annotations.Property;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.MappingMatch;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  14:35
 */
@Controller
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    private UserService userService;
    @Autowired
    private AdmitService admitService;
    @Autowired
    private  AdoptService adoptService;
    @Autowired
    private PetService petService;
    @Autowired
    private AdoptInfoService adoptInfoService;

    //我要获取当前的日期
    Date date = new Date();
    //设置要获取到什么样的时间
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    //获取String类型的时间
    String createdate = sdf.format(date);
    @RequestMapping("/login")
    public String login(@RequestParam(value = "name") String username,@RequestParam(value = "password")  String password,  HttpServletRequest request) {
        Admit admit = admitService.AdmitLogin(username,password);
        if (admit != null) {
            request.getSession().setAttribute("Admin", admit);
            return "userMessage";
        }
        return "userMessage";
    }
    @RequestMapping("/admitHome")
    private String admitHome() {
        return "admitHome";
    }

//    @RequestMapping("/admitUser")
//    public String showUser(Model model) {
//        List<User> users = userService.getUsers();
//        model.addAttribute("usersList", users);
//        return "userMessage";
//    }

    @RequestMapping("/addUser")
    @ResponseBody
    public Msg addUser(User user) {
        if (userService.saveUser(user) > 0) {
            System.out.println(user);
            return Msg.success();
        }
        return Msg.fail();
    }

    @RequestMapping("/delUser")
    @ResponseBody
    public Msg delUser(Integer id) {
        System.out.println("进入删除阶段");
        if (userService.deleteUserById(id) > 0) {
            System.out.println("删除成功");
            return Msg.success();
        }
        System.out.println("删除失败");
        return Msg.fail();
    }

    @RequestMapping("/edit")
    @ResponseBody
    public Msg edit(Integer id) {
        User user = userService.getUserById(id);
        if (user != null) {
            return Msg.success().add("user", user);
        }
        return Msg.fail();
    }

    @RequestMapping("/update")
    @ResponseBody
    public Msg updateUser(User user,HttpServletRequest request) {
        if (userService.updateUser(user) > 0) {
            request.getSession().setAttribute("User",user);
            return Msg.success();
        }
        return Msg.fail();
    }

    @RequestMapping("/batchDelete")
    @ResponseBody
    public Msg batchDelete(String ids) {
        //批量删除
        List<Integer> del_ids = new ArrayList<>();
        String[] str_ids = ids.split("-");
        //组装id的集合
        for (String string : str_ids) {
            del_ids.add(Integer.parseInt(string));
        }
        userService.deleteBatch(del_ids);
        return Msg.success();
    }

    @RequestMapping("/batchUpdate")
    @ResponseBody
    public Msg updateBatch(QueryVo queryVo) {
        List<User> users = queryVo.getUsers();
        for (User user : users) {
            userService.updateUser(user);
        }
        return Msg.success();
    }

    @RequestMapping("/users")
    @ResponseBody
    public Msg getUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 6);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<User> users = userService.getUsers();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        return Msg.success().add("pageInfo", page);
    }
    //拒绝该用户对动物的领养
    @RequestMapping("/refuse")
    @ResponseBody
    public Msg refuse(@RequestParam(value = "id") Integer id,HttpServletRequest request) {
        Adopt adopt = adoptService.getAdoptById(id);
        System.out.println("Adopt:"+adopt);
        //第1步添加提示消息
        Remind remind = new Remind();
        remind.setUser_id(adopt.getUser_id());
        remind.setComment("你的领养申请已被拒绝");
        remind.setTime(createdate);
        if(userService.remindAdd(remind)>0) {
            //第3步消息提示加1
            if (userService.UserRemindCountAdd(adopt.getUser_id()) > 0) {
                //第2步删除申请信息
                if (adoptService.delAdoptById(adopt.getId()) > 0) {
                    System.out.println("执行申请领养拒绝操作顺利");
                    return Msg.success();
                }
            }
        }
        return Msg.fail();
    }
    //同意该用户领养
    @RequestMapping("/agree")
    @ResponseBody
    public Msg agree(@RequestParam(value = "id")Integer id,HttpServletRequest request) {
        Adopt adopt = adoptService.getAdoptById(id);
        if (adopt != null) {
            //第1步查询此动物是否被领养(两个人同时领养申请，先同意一个发生的情况)
            User user1 = petService.findMasterByPetId(adopt.getPet_id());
            if (user1==null) {
                //第2步将它添加进宠物领养信息表
                AdoptInfo adoptInfo = new AdoptInfo();
                adoptInfo.setUser_id(adopt.getUser_id());
                adoptInfo.setPet_id(adopt.getPet_id());
                adoptInfo.setTime(createdate);
                if (adoptInfoService.addAdoptInfo(adoptInfo) > 0) {
                    //第3步为宠物添加主人的ID
                    Pet pet = new Pet();
                    pet.setUser_id(adopt.getUser_id());
                    pet.setId(adopt.getPet_id());
                    if (petService.addMasterId(pet) > 0) {
                        //第4步将为主人添加宠物ID
                        User user = new User();
                        user.setPet_id(adopt.getPet_id());
                        user.setState(1);//设置1表示此人已有领养宠物
                        user.setId(adopt.getUser_id());
                        if (userService.addPetId(user) > 0) {
                            //第5步设置消息提示
                            Remind remind = new Remind();
                            remind.setUser_id(adopt.getUser_id());
                            remind.setComment("你的领养申请已同意");
                            remind.setTime(createdate);
                            if(userService.remindAdd(remind)>0) {
                                //用户消息提示加一
                                if (userService.UserRemindCountAdd(adopt.getUser_id()) > 0) {
                                    //第6步删除申请信息
                                    if (adoptService.delAdoptById(adopt.getId()) > 0) {
                                        System.out.println("执行申请领养同意操作顺利");
                                        return Msg.success();
                                    }
                                }
                            }
                        }
                    }
                }
            }else {
                if (adoptService.delAdoptById(adopt.getId()) > 0) {
                    System.out.println("此动物已被领养");
                    //第5步设置消息提示
                    Remind remind = new Remind();
                    remind.setUser_id(adopt.getUser_id());
                    remind.setComment("此动物已被领养");
                    remind.setTime(createdate);
                    if(userService.remindAdd(remind)>0) {
                        //用户消息提示加一
                        if (userService.UserRemindCountAdd(adopt.getUser_id()) > 0) {
                            //第6步删除申请信息
                            if (adoptService.delAdoptById(adopt.getId()) > 0) {
                                return Msg.success();
                            }
                        }
                    }

                }
            }
        }
        return Msg.fail();
    }
}
