package com.controller;
import com.entity.Pet;
import com.entity.Pinglun;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.PinglunService;
import com.util.Msg;
import com.util.QueryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  14:36
 */
@Controller
@RequestMapping("/pinglun")
public class PinglunController {
    @Autowired
    private PinglunService pinglunService;

    @RequestMapping(value = "/pinglunAdd")//method = {RequestMethod.POST}
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
    @RequestMapping("/addPinglun")
    @ResponseBody
    public Msg addPinglun(Pinglun pinglun) {
        if (pinglunService.addPinglun(pinglun) > 0) {
            System.out.println(pinglun);
            return Msg.success();
        }
        return Msg.fail();
    }

    @RequestMapping("/delPinglun")
    @ResponseBody
    public Msg delUser(Integer id) {
        System.out.println("进入删除阶段");
        if (pinglunService.delPinglunById(id) > 0) {
            System.out.println("删除成功");
            return Msg.success();
        }
        System.out.println("删除失败");
        return Msg.fail();
    }

    @RequestMapping("/edit")
    @ResponseBody
    public Msg edit(Integer id) {
      Pinglun pinglun= pinglunService.getPinglunById(id);
        if (pinglun != null) {
            return Msg.success().add("pinglun", pinglun);
        }
        return Msg.fail();
    }

    @RequestMapping("/update")
    @ResponseBody
    public Msg updateUser(Pinglun pinglun) {
        if (pinglunService.updatePinglun(pinglun) > 0) {
            return Msg.success();
        }
        return Msg.fail();
    }

    @RequestMapping("/batchDelete")
    @ResponseBody
    public Msg batchDelete(String ids) {
        //批量删除
        List<Integer> del_ids = new ArrayList<>();
        String[] str_ids = ids.split("-");
        //组装id的集合
        for (String string : str_ids) {
            del_ids.add(Integer.parseInt(string));
        }
        pinglunService.deleteBatch(del_ids);
        return Msg.success();
    }

    @RequestMapping("/batchUpdate")
    @ResponseBody
    public Msg updateBatch(QueryVo queryVo) {
        List<Pinglun> pinglunList = queryVo.getPingluns();
        for (Pinglun pinglun : pinglunList) {
           pinglunService.updatePinglun(pinglun);
        }
        return Msg.success();
    }

    @RequestMapping("/pingluns")
    @ResponseBody
    public Msg getUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 4);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pinglun> users = pinglunService.getAllPinglun();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        return Msg.success().add("pageInfo", page);

    }
}
