package com.controller;

import com.entity.Pet;
import com.entity.User;
import com.service.AdoptService;
import com.service.PetService;
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
    @Autowired
    PetService petService;

    @RequestMapping("/chickPet")
    public String chickPet(String petName,HttpServletRequest request) {
       Pet pet= petService.findPetByName(petName);
       request.getSession().setAttribute("newPet",pet);
        System.out.println("pet:"+pet);
        return "forward:/show";
    }

    @RequestMapping("/adoptPet")
    public String adopt(User user, HttpServletRequest request) {
        User user1 = (User) request.getSession().getAttribute("User");
        user.setId(user1.getId());
        int a = adoptService.updateAdoptUser(user);
        if (a > 0) {
            request.getSession().setAttribute("AdoptMsg", "你的信息已提交，请等候管理员审核");
            System.out.println("领养人：" + user);
            return "forward:/show";
        }
        request.getSession().setAttribute("AdoptMsg", "申请失败");
        return "forward:/show";
    }

}
