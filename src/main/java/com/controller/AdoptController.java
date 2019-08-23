package com.controller;

import com.entity.User;
import com.service.AdoptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  14:35
 */
@Controller
@RequestMapping("/adopt")
public class AdoptController {
    @Autowired
    AdoptService adoptService;
    @RequestMapping("/adoptPet")
    public String adopt(User user, Model model, HttpServletRequest request){
       User user1= (User) request.getSession().getAttribute("User");
        user.setUsername(user1.getUsername());
       int a= adoptService.updateAdoptUser(user);
       if (a!=0){
           model.addAttribute("AdoptMsg","你的信息已提交，请等候管理员审核");
           System.out.println("领养人："+user);
           return "forward:/show";
       }
        model.addAttribute("AdoptMsg","申请失败");
        return "forward:/show";
    }

}
