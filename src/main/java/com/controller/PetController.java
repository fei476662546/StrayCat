package com.controller;

import com.entity.Pet;
import com.entity.User;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.PetService;
import com.util.Msg;
import com.util.PageUtil;
import com.util.QueryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  14:34
 */
@Controller
@RequestMapping("/pet")
public class PetController {
    @Autowired
    private PetService petService;
    @RequestMapping("/pets")
    @ResponseBody
    public Msg getPets(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 6);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pet> users = petService.getAllPet();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        return Msg.success().add("pageInfo", page);

    }

    @RequestMapping("/addPet")
    @ResponseBody
    public Msg addPet(Pet pet) {
        if (petService.addPet(pet) > 0) {
            System.out.println(pet);
            return Msg.success();
        }
        return Msg.fail();
    }

    @RequestMapping("/delPet")
    @ResponseBody
    public Msg delPet(Integer id) {
        System.out.println("进入删除阶段");
        if (petService.delPetById(id) > 0) {
            return Msg.success();
        }
        System.out.println("删除失败");
        return Msg.fail() ;
    }

    @RequestMapping("/editPet")
    @ResponseBody
    public Msg editPet(Integer id,HttpServletRequest request) {
        Pet user = petService.findPetById(id);
        return Msg.success().add("pet", user);
    }

    @RequestMapping("/updatePet")
    @ResponseBody
    public Msg updatePet(Pet pet) {
        if (petService.updatePet(pet) > 0) {
            return Msg.success();
        }

        return Msg.fail();
    }

    @RequestMapping("/batchDeletePet")
    @ResponseBody
    public Msg batchDeletePet(String ids) {
        //批量删除
        List<Integer> del_ids = new ArrayList<>();
        String[] str_ids = ids.split("-");
        //组装id的集合
        for (String string : str_ids) {
            del_ids.add(Integer.parseInt(string));
        }
        petService.deleteBatchPet(del_ids);
        return Msg.success();
    }

    @RequestMapping("/batchUpdatePet")
    @ResponseBody
    public Msg updateAllPet(QueryVo queryVo) {
        List<Pet> users = queryVo.getPets();
        for (Pet user : users) {
            petService.updatePet(user);
        }
        return Msg.success();
    }
    //分页显示列表
    @RequestMapping("/page")
    public ModelAndView showlist(HttpServletRequest request, Model model) {
        int pageIndex = 1;//设置初始的当前页，页面显示的都是第一页
        int pageSize = 4;//设置每一页显示几条数据,用于计算总页数，此处设置的值必须与sql语句的limit最后的数值一样
        PageUtil<Pet> pageUtil = new PageUtil<Pet>();//初始化工具类
        List<Pet> list = new ArrayList<Pet>();
        if (request.getParameter("pageIndex") != null) {
            pageIndex = Integer.parseInt(request.getParameter("pageIndex"));
        }//对页面上的分页标签传的值,进行获取,也是就点击'上一页或者下一页'传过来的pageindex
        pageUtil.setPageIndex(pageIndex);//保存至工具类
        int number = petService.pagecount();//调用service层方法计算出总数据量，就是多少条数据.
        pageUtil.setPageNumber(number);//保存至工具类
        pageUtil.setPageSize(pageSize);//保存至工具类
        pageUtil.setPageCount((int) Math.ceil((double) (pageUtil
                .getPageNumber() / pageUtil.getPageSize())) + 1);//计算出总页数,并封装到工具类
        int index = (pageIndex - 1) * pageSize;//计算出每一页从数据库中第几条数据开始取值，也就是limit后面的第一个数字
        list = petService.showlist(index);//调用service层的方法，取得数据库中的值
        pageUtil.setList(list);//保存到工具类中的集合
        model.addAttribute("pageUtil", pageUtil);//传递到页面，存入值栈中
        return new ModelAndView("services");//跳转的相关页面
    }
}
