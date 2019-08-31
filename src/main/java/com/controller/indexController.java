package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Create by mysteriousTime
 * time on 2019/8/22  9:03
 */
@Controller
public class indexController {
    @RequestMapping("/")
    public String index(){
        return "redirect:/user/index";
    }
    @RequestMapping("/about")
    public String about(){
        return "about";
    } @RequestMapping("/service")
    public String service(){
        return "services";
    } @RequestMapping("/blog")
    public String blog(){
        return "blog";
    } @RequestMapping("/team")
    public String team(){
        return "team";
    } @RequestMapping("/gallery")
    public String gallery(){
        return "gallery";
    } @RequestMapping("/person")
    public String person(){
        return "person";
    }@RequestMapping("/show")
    public String show(){
        return "show";
    }
}
