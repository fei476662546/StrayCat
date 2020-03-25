package com.controller;

import com.entity.Pet;
import com.entity.Pinglun;
import com.entity.Remind;
import com.entity.User;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.PetService;
import com.service.PinglunService;
import com.service.UserService;
import com.util.Msg;
import com.util.QueryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  14:36
 */
@Controller
@RequestMapping("/pinglun")
public class PinglunController {
    @Autowired
    private PetService petService;
    @Autowired
    private PinglunService pinglunService;
    @Autowired
    private UserService userService;
    //我要获取当前的日期
    Date date = new Date();
    //设置要获取到什么样的时间
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    //获取String类型的时间
    String createdate = sdf.format(date);

    @RequestMapping(value = "/pinglunAdd")//method = {RequestMethod.POST}
    @ResponseBody
    public Msg pinglunAdd(Pinglun pinglun) {
        System.out.println("==============" + pinglun);
        pinglunService.addPinglun(pinglun);
        return Msg.success();
    }

    @RequestMapping("/pinglunShow")
    public String pinglunShow(Model model, HttpServletRequest request) {
        Pet pet = (Pet) request.getSession().getAttribute("UserPet");
        List<Pinglun> pinglunList = pinglunService.getPinglunByPetName(pet.getPetName());

        if (pinglunList != null) {
            model.addAttribute("pinglunList", pinglunList);
            System.out.println("评论列表：" + pinglunList);
            return "pet_info";
        }
        System.out.println("评论展示失败");
        return "show";
    }

    @RequestMapping("/addPinglun")
    @ResponseBody
    public Msg addPinglun(Pinglun pinglun) {
        if (pinglunService.addPinglun(pinglun) > 0) {
            System.out.println(pinglun);
            return Msg.success();
        }
        return Msg.fail();
    }

    @RequestMapping("/delPinglun")
    @ResponseBody
    public Msg delUser(@RequestParam(value = "id") Integer id) {
        if (pinglunService.delPinglunById(id) > 0) {
            return Msg.success();
        }
        System.out.println("删除失败");
        return Msg.fail();
    }

    @RequestMapping("/del_pl")
    public void del_pl(@RequestParam(value = "id") Integer id) {
        if (pinglunService.delPinglunById(id) > 0) {
            System.out.println("删评论成功");
        }
        System.out.println("删除失败");
    }

    @RequestMapping("/edit")
    @ResponseBody
    public Msg edit(Integer id) {
        Pinglun pinglun = pinglunService.getPinglunById(id);
        if (pinglun != null) {
            return Msg.success().add("pinglun", pinglun);
        }
        return Msg.fail();
    }

    @RequestMapping("/update")
    @ResponseBody
    public Msg updateUser(Pinglun pinglun) {
        if (pinglunService.updatePinglun(pinglun) > 0) {
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
        pinglunService.deleteBatch(del_ids);
        return Msg.success();
    }

    @RequestMapping("/batchUpdate")
    @ResponseBody
    public Msg updateBatch(QueryVo queryVo) {
        List<Pinglun> pinglunList = queryVo.getPingluns();
        for (Pinglun pinglun : pinglunList) {
            pinglunService.updatePinglun(pinglun);
        }
        return Msg.success();
    }

    @RequestMapping("/pingluns")
    @ResponseBody
    public Msg getUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 6);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pinglun> users = pinglunService.getAllPinglun();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        return Msg.success().add("pageInfo", page);

    }

    @RequestMapping("/pl_list")
    @ResponseBody
    public Msg pl_list(@RequestParam(value = "pn", defaultValue = "1") Integer pn, @RequestParam(value = "pet_id") Integer id) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 6);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pinglun> users = pinglunService.getPlsByPetId(id);
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        return Msg.success().add("pls", page);

    }

    //评论添加
    @RequestMapping("/pl_add")
    @ResponseBody
    public Msg pl_add(Pinglun pinglun) {
        System.out.println("评论添加内容：" + pinglun);
        if (pinglunService.addPinglun(pinglun) > 0) {
            User user = petService.findMasterByPetId(pinglun.getPet_id());
            if (user != null) {
                if (!user.getId().equals(pinglun.getUser_id())) {
                    Remind remind = new Remind();
                    remind.setUser_id(user.getId());
                    remind.setComment("用户" + pinglun.getReplyName() + "评论了你的宠物" + pinglun.getPinglunObj());
                    remind.setTime(pinglun.getTime());
                    //用户消息提示加一
                    if (userService.remindAdd(remind) <= 0) {
                        System.out.println("评论的消息提示失败");
                    }
                }
            }
            return Msg.success();
        }
        return Msg.fail();
    }

    //点赞个数+1
    @RequestMapping("/pl_zan_add")
    @ResponseBody
    public Msg zan_pet_add(@RequestParam(value = "user_id") Integer user_id, @RequestParam(value = "pl_id") Integer pl_id, @RequestParam(value = "pet_id") Integer pet_id, HttpServletRequest request) {
        User user1 = userService.getUserById(user_id);
        Pet p = petService.findPetById(pet_id);
        if (pinglunService.pl_zan_count_add(pl_id) > 0) {
            User user = pinglunService.find_user_by_pl_id(pl_id);
            if (user != null) {
                Remind remind = new Remind();
                remind.setUser_id(user.getId());
                remind.setComment("用户<font color = 'red'>" + user1.getUsername() + "</font>点赞了您对宠物<font color = 'skyblue'>" + p.getPetName() + "</font>的评论");
                remind.setTime(createdate);
                if (userService.remindAdd(remind) <= 0) {
                    System.out.println("提示消息失败了");
                }
                return Msg.success();
            }
        }

        return Msg.fail();
    }

    //点赞个数-1
    @RequestMapping("/pl_zan_reduce")
    @ResponseBody
    public Msg zan_pet_reduce(@RequestParam(value = "pet_id") Integer pet_id,@RequestParam(value = "user_id") Integer user_id, @RequestParam(value = "pl_id") Integer pl_id, HttpServletRequest request) {
        User user1 = userService.getUserById(user_id);
        Pet p = petService.findPetById(pet_id);
        if (pinglunService.pl_zan_count_reduce(pl_id) > 0) {
            User user = pinglunService.find_user_by_pl_id(pl_id);
            if (user != null) {
                Remind remind = new Remind();
                remind.setUser_id(user.getId());
                remind.setComment("用户<font color = 'red'>" + user1.getUsername() + "</font>取消了点赞您对宠物<font color = 'skyblue'>" + p.getPetName() + "</font>的评论");
                remind.setTime(createdate);
                if (userService.remindAdd(remind) <= 0) {
                    System.out.println("提示消息失败了");
                }
                return Msg.success();
            }
        }
        return Msg.fail();
    }
}
