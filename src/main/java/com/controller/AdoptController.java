package com.controller;

import com.entity.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.AdoptInfoService;
import com.service.AdoptService;
import com.service.PetService;
import com.service.UserService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.util.Count;
import com.util.Msg;
import com.util.showByPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.swing.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  14:35
 */
@Controller
@RequestMapping("/adopt")
public class AdoptController {
    @Autowired
    AdoptService adoptService;
    @Autowired
    PetService petService;
    @Autowired
    UserService userService;
    @Autowired
    AdoptInfoService adoptInfoService;
    //我要获取当前的日期
    Date date = new Date();
    //设置要获取到什么样的时间
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    //获取String类型的时间
    String createdate = sdf.format(date);





    //领养申请
    @RequestMapping("/adoptPetApply")
    @ResponseBody
    public Msg adopt(Adopt adopt) {
        System.out.println("Adopt:"+adopt);
       if (adoptService.addApplyAdopt(adopt)>0){
            return Msg.success();
       }
        return Msg.fail();

    }

    @RequestMapping("/adoptApply")
    public String adoptApply(Model model) {
        List<Adopt> adoptList = adoptService.getAll();
        System.out.println("领养：" + adoptList);
        model.addAttribute("AdoptList", adoptList);
        return "adoptApply";
    }
    @RequestMapping("/all_adopt")
    @ResponseBody
    public Msg all_adopt(@RequestParam(value = "pn", defaultValue = "1") Integer pn){
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 6);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Adopt> users = adoptService.getAll();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        return Msg.success().add("pageInfo", page);
    }


}
