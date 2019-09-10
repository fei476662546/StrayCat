package com.controller;

import com.entity.Blog;
import com.entity.Pinglun;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.BlogService;
import com.service.PinglunService;
import com.util.Msg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/9/9  10:21
 */
@Controller
@RequestMapping("/blog")
public class blogController {

    @Autowired
    private BlogService blogService;
    @Autowired
    private PinglunService pinglunService;


    @RequestMapping("blogs.action")
    @ResponseBody
    public Msg getBlog(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 3);
        List<Blog> blogs = blogService.selectAll();
        System.out.println(blogs);
        // startPage后面紧跟的这个查询就是一个分页查询
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(blogs, 2);
        return Msg.success().add("pageInfo", page);
    }

    /**
     * 这是传给前端的数据
     */
    @RequestMapping("blog.action")
    public String getBlogs(ModelAndView modelAndView) {
        List<Blog> blogs = blogService.selectAll();
        modelAndView.addObject("blogs", blogs);
        return "blog";
    }
    @RequestMapping(value = "/pinglunAdd")//method = {RequestMethod.POST}
    @ResponseBody
    public Msg pinglunAdd(Pinglun pinglun) {
        System.out.println("=============="+pinglun);
        pinglunService.addPinglun(pinglun);
        return Msg.success();
    }
    @RequestMapping("/pinglunShow")
    public String pinglunShow(Model model , HttpServletResponse response) {
        List<Pinglun> pinglunList=blogService.getPinglunByObj("blog");
        response.setCharacterEncoding("utf-8");
        if (pinglunList!=null){
            model.addAttribute("pinglunList",pinglunList);
            System.out.println("评论列表："+pinglunList);
            return "blog";
        }
        System.out.println("评论展示失败");
        return "blog";
    }
//    @RequestMapping("create.action")
//    @ResponseBody
//    public Msg addBlog(Blog blog) {
//        int i = blogService.addBlog(blog);
//        if (i > 0) {
//            return Msg.success();
//        } else {
//            return Msg.fail();
//        }
//    }
//
//    @RequestMapping("delete.action")
//    @ResponseBody
//    public Msg deleteBlog(Integer id) {
//        int i = blogService.deleteBlog(id);
//        if (i > 0) {
//            return Msg.success();
//        } else {
//            return Msg.fail();
//        }
//    }
//
//    @RequestMapping("update.action")
//    @ResponseBody
//    public Msg updateBlog(Blog blog) {
//        if (blogService.updateBlog(blog) > 0) {
//            return Msg.success();
//        } else {
//            return Msg.fail();
//        }
//    }
//
//    @RequestMapping("findById.action")
//    @ResponseBody
//    public Msg findById(Integer id) {
//        Blog blog = blogService.findById(id);
//        if (blog != null) {
//            return Msg.success().add("blog", blog);
//        } else {
//            return Msg.fail();
//        }
//
//    }
//
//    @RequestMapping("findByTime.action")
//    @ResponseBody
//    public Msg findByTime(@RequestParam("actionTime") String actionTime) throws ParseException {
//        PageHelper.startPage(1, 4);
//        List<Blog> blog = blogService.findByTime(actionTime);
//        if (blog != null) {
//            PageInfo page = new PageInfo(blog, 3);
//            return Msg.success().add("pageInfo", page);
//        } else {
//            return Msg.fail();
//        }
//
//    }

}

