package com.controller;

import com.entity.Adopt;
import com.entity.Pet;
import com.entity.User;
import com.service.AdoptService;
import com.service.PetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
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

    @RequestMapping("/chickPet")
    public String chickPet(String petName, HttpServletRequest request) {
        Pet pet = petService.findPetByName(petName);
        request.getSession().setAttribute("newPet", pet);
        System.out.println("pet:" + pet);
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

    @RequestMapping("/adoptApply")
    public String adoptApply(Model model) {
        List<Adopt> adoptList = adoptService.adoptApply();
        System.out.println("领养：" + adoptList);
        model.addAttribute("AdoptList", adoptList);
        return "adoptApply";
    }

    @RequestMapping("/applyOK")
    public String applyOK(Adopt adopt,HttpServletRequest request) {
//       User user= adoptService.findApplyUser(adopt.getId());
//        ModelAndView model = new ModelAndView("/adopt/adoptApply");
        if (adoptService.updateUserState(1, adopt.getUser_id()) > 0 && adoptService.updatePetState(1,adopt.getPetName() ) > 0) {
           adoptService.updateApply(adopt.getApply(),adopt.getId());
            request.setAttribute("applyResult", "您已通过审核，请等待我们与你联系");
            return "forward:/";
        }
       request.setAttribute("applyResult", "发生错误");
        return "forward:/adopt/adoptApply";
    }

    @RequestMapping("/applyNO")
    public String applyNO( Adopt adopt,HttpServletRequest request) {
        adoptService.updateApply(adopt.getApply(),adopt.getId());
        request.setAttribute( "applyResult", "您不符合我们的要求，不能领养");
        System.out.println("您不符合我们的要求，不能领养");
        return "forward:/";
    }

}
