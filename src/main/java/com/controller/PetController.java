package com.controller;

import com.entity.Pet;
import com.entity.User;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.PetService;
import com.util.Msg;
import com.util.QueryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
    public Msg editPet(Integer id) {
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

}
