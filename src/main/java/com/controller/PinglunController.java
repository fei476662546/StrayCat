package com.controller;

import com.entity.Pet;
import com.entity.Pinglun;
import com.service.PinglunService;
import com.util.Msg;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.net.HttpCookie;
import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  14:36
 */
@Controller
public class PinglunController {
    @Autowired
    private PinglunService pinglunService;

    @RequestMapping("/pinglunAdd")
    @ResponseBody
    public Msg pinglunAdd(Pinglun pinglun) {
        System.out.println("=============="+pinglun);
        pinglunService.addPinglun(pinglun);
        return Msg.success();
    }
    @RequestMapping("/pinglunShow")
    public String pinglunShow(Model model,HttpServletRequest request) {
       Pet pet= (Pet) request.getSession().getAttribute("newPet");
        List<Pinglun> pinglunList=pinglunService.getPinglunByPetName(pet.getPetName());
        if (pinglunList!=null){
            model.addAttribute("pinglunList",pinglunList);
            System.out.println("评论列表："+pinglunList);
            return "show";
        }
        System.out.println("评论展示失败");
        return "show";
    }
}
