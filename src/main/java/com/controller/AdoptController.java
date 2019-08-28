package com.controller;

import com.entity.Adopt;
import com.entity.Pet;
import com.entity.User;
import com.service.AdoptService;
import com.service.PetService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.util.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.swing.*;
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

    @RequestMapping("/delete")
    public String delUser(Integer id ) {
        System.out.println("进入删除阶段");
        if (adoptService.delAdoptById(id) > 0) {
            System.out.println("删除成功");
            return "redirect:/adopt/adoptApply";
        }
        System.out.println("删除失败");

        return "redirect:/adopt/adoptApply";
    }

    @RequestMapping("/edit")

    public Msg edit(Integer id) {
        Adopt adopt = adoptService.getAdoptById(id);
        if (adopt != null) {
            return Msg.success().add("adopt", adopt);
        }
        return Msg.fail();
    }

    @RequestMapping("/update")
    public Msg updateAdopt(Adopt adopt) {
        if (adoptService.updateAdopt(adopt) > 0) {
            return Msg.success();
        }
        return Msg.fail();
    }


    @RequestMapping("/chickPet")
    public String chickPet(String petName, HttpServletRequest request) {
        Pet pet = petService.findPetByName(petName);
        request.getSession().setAttribute("newPet", pet);
        System.out.println("pet:" + pet);
        return "forward:/show";
    }

    @RequestMapping("/adoptPet")
    public String adopt(User user, Pet pet, HttpServletRequest request) {
        User user1 = (User) request.getSession().getAttribute("User");
        user.setId(user1.getId());
        Adopt adopt = new Adopt();
        adopt.setUser_id(user.getId());
        adopt.setPetName(pet.getPetName());
        System.out.println("领养申请从前端传回的pet:" + pet.getPetName());
        adopt.setApply(0);
        adopt.setTime("2019年5月6日");
        System.out.println("new adopt"+adopt);
        int a = adoptService.updateAdoptUser(user);
        int b = adoptService.addApplyAdopt(adopt);
        if (a > 0 && b > 0) {
            request.getSession().setAttribute("AdoptMsg", "你的信息已提交，请等候管理员审核");
            System.out.println("领养人：" + user);
            return "forward:/show";
        }
        request.getSession().setAttribute("AdoptMsg", "申请失败");
        System.out.println("提交领养信息失败");
        return "forward:/show";
    }

    @RequestMapping("/adoptApply")
    public String adoptApply(Model model,HttpServletRequest request) {
        List<Adopt> adoptList = adoptService.adoptApply();
//        for (Adopt adopt :adoptList){
//            if ( adopt.getApply()==0){
//                request.getSession().setAttribute("noLook","未审核");
//            }else {
//                request.getSession().setAttribute("isLook","已审核");
//            }
//        }
        System.out.println("领养：" + adoptList);
        model.addAttribute("AdoptList", adoptList);
        return "adoptApply";
    }

    @RequestMapping("/applyOK")
    public String applyOK(Integer id, HttpServletRequest request) {
        Adopt adopt = adoptService.getAdoptById(id);
        System.out.println("----"+adopt);
        User user=new User();
        user.setState(1);
        user.setId(adopt.getUser_id());
        Pet pet =new Pet();
        pet.setState(1);
        pet.setPetName(adopt.getPetName());
        System.out.println("==============="+pet.getPetName());
     int   a= adoptService.updateUserState(user);
     int b=adoptService.updatePetState(pet);
        System.out.println("a="+a+",b="+b);
        if (a>0&&b>0) {
           adopt.setApply(1);
            adoptService.updateApply(adopt);
            request.setAttribute("applyResult", "您已通过审核，请等待我们与你联系");
            return "redirect:/adopt/adoptApply";
        }
        request.setAttribute("applyResult", "发生错误");
        System.out.println("审核失败了,数据库发生错误？");
        return "redirect:/adopt/adoptApply";
    }
    @RequestMapping("/applyNO")
    public String applyNO(Integer id, HttpServletRequest request) {
        Adopt adopt = adoptService.getAdoptById(id);
        User user=new User();
        user.setState(0);
        user.setId(adopt.getUser_id());
        Pet pet =new Pet();
        pet.setState(0);
        pet.setPetName(adopt.getPetName());
        if (adoptService.updateUserState(user) > 0 && adoptService.updatePetState(pet) > 0) {
            adopt.setApply(-1);
            adoptService.updateApply(adopt);
            request.setAttribute("applyResult", "您的条件不符");
            return "redirect:/adopt/adoptApply";
        }
        request.setAttribute("applyResult", "发生错误");
        System.out.println("审核拒绝失败了,数据库发生错误？");
        return "redirect:/adopt/adoptApply";
    }


}
