package com.controller;

import com.entity.*;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.AdoptService;
import com.service.PetService;
import com.service.PinglunService;
import com.service.UserService;
import com.util.Msg;
import com.util.PageUtil;
import com.util.QueryVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import sun.awt.geom.AreaOp;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  14:34
 */
@Controller
@RequestMapping("/pet")
public class PetController {
    @Autowired
    private PetService petService;
    @Autowired
    private AdoptService adoptService;
    @Autowired
    private UserService userService;
    @Autowired
    private PinglunService pinglunService;
    //我要获取当前的日期
    Date date = new Date();
    //设置要获取到什么样的时间
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    //获取String类型的时间
    String createdate = sdf.format(date);

    //    已领养的动物
    @RequestMapping("/pets")
    @ResponseBody
    public Msg get_adopt_Pets(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 4);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pet> users = petService.find_Pet_have_master();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        return Msg.success().add("pageInfo", page);

    }

    //未领养的动物
    @RequestMapping("/no_master_pets")
    @ResponseBody
    public Msg get_no_adopt_Pets(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 4);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pet> users = petService.find_Pet_no_master();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        return Msg.success().add("pageInfo", page);

    }

    //查询所有猫
    @RequestMapping("/cats")
    @ResponseBody
    public Msg cats(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 4);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pet> users = petService.find_all_cats();
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(users, 3);
        return Msg.success().add("pageInfo", page);

    }

    //查询所有狗
    @RequestMapping("/dogs")
    @ResponseBody
    public Msg dogs(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 4);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pet> users = petService.find_all_dogs();
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
        return Msg.fail();
    }

    @RequestMapping("/editPet")
    @ResponseBody
    public Msg editPet(Integer id, HttpServletRequest request) {
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

    @ResponseBody
    @RequestMapping("/likePetByPetName")
    public Msg getUsers(@RequestParam(value = "pn", defaultValue = "1") Integer pn, @RequestParam(value = "petName") String petName) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 6);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pet> pets = petService.likeByPetName(petName, petName, petName);
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(pets, 3);
        return Msg.success().add("pageInfo", page);
    }


    //进入宠物信息页，首先要有用户和pet的id
    @RequestMapping("/petMessage")
    public String petMore(@RequestParam(value = "user_id") Integer user_id, @RequestParam(value = "pet_id") Integer pet_id, HttpServletRequest request) {
        Pet pet = petService.findPetById(pet_id);
        //查找动物的点赞数
        request.getSession().setAttribute("UserPet", pet);
        request.getSession().setAttribute("Pet_counts", pet.getCounts());
        //查找动物的领养主人
        User user = petService.findMasterByPetId(pet.getId());
        pet.setMaster(user);
        //查询用户是否对此动物进行了申请提交
        if (user_id != null) {
            Adopt adopt = adoptService.findApplyByPetIdAndUserId(user_id, pet_id);
            System.out.println("用户是否提交过申请" + adopt);

            if (adopt != null) {
                request.getSession().setAttribute("is_apply", true);
            } else {
                request.getSession().setAttribute("is_apply", false);
            }
        }
        request.getSession().setAttribute("UserPet", pet);
        System.out.println("pet:" + pet);
        return "forward:/pinglun/pinglunShow";
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

    //点赞数功能
    @RequestMapping("/fabulous")
    @ResponseBody
    public Msg fabulous(@RequestParam(value = "pet_id") Integer pet_id, @RequestParam(value = "user_id") Integer user_id, HttpServletRequest request) {
        if (user_id != null) {
            User user = petService.find_user_is_zan_pet(user_id, pet_id);
//            Pet pet1 = petService.findPetById(pet_id);
//            request.getSession().setAttribute("UserPet", pet1);
//            request.getSession().setAttribute("Pet_counts", pet1.getCounts());
            if (user == null) {
                Zan_pet zan_pet = new Zan_pet();
                zan_pet.setObj(pet_id);
                zan_pet.setUser_id(user_id);
                zan_pet.setTime(createdate);
                if (petService.add_pet_count_add(zan_pet) > 0) {
                    if (petService.pet_counts_add(pet_id) > 0) {
                        System.out.println("点赞成功");
                        //第5步设置消息提示
                        //查找此动物的主人
                        User user1 = petService.findMasterByPetId(pet_id);
                        if (user1 != null) {
                            Remind remind = new Remind();
                            remind.setUser_id(user1.getId());
                            User user2 = (User) request.getSession().getAttribute("User");
                            remind.setComment("用户" + user2.getUsername() + "点赞了您的宠物");
                            remind.setTime(createdate);
                            if (userService.remindAdd(remind) <= 0) {
                                System.out.println("提示消息失败了");
                            }
                        }
                        Pet pet = petService.findPetById(pet_id);
                        request.getSession().setAttribute("UserPet", pet);
                        return Msg.success().add("Pet_counts", pet.getCounts());
                    }
                }
            } else {
                //用户不能同时给pet点两次赞
                Msg msg = new Msg();
                msg.setCode(110);
                return msg;
            }
        } else {
            //游客点赞模式。待续。。。。。。。。。。。。。。。
            Msg msg = new Msg();
            msg.setCode(300);
            return msg;
        }
        System.out.println("点赞失败+用户id:" + user_id);
        return Msg.fail();
    }

    //模糊查询-------------------------------------------------------------
    @ResponseBody
    @RequestMapping("/like_pet_have_master")
    public Msg pet_have_master(@RequestParam(value = "pn", defaultValue = "1") Integer pn, @RequestParam(value = "petName") String petName) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 4);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pet> pets = petService.like_pet_have_master(petName, petName, petName);
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(pets, 3);
        return Msg.success().add("pageInfo", page);
    }

    @ResponseBody
    @RequestMapping("/like_pet_no_master")
    public Msg no_master(@RequestParam(value = "pn", defaultValue = "1") Integer pn, @RequestParam(value = "petName") String petName) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 4);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pet> pets = petService.like_pet_no_master(petName, petName, petName);
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(pets, 3);
        return Msg.success().add("pageInfo", page);
    }

    @ResponseBody
    @RequestMapping("/like_pet_cats")
    public Msg cats_like(@RequestParam(value = "pn", defaultValue = "1") Integer pn, @RequestParam(value = "petName") String petName) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 4);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pet> pets = petService.like_pet_cats(petName, petName, petName);
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(pets, 3);
        return Msg.success().add("pageInfo", page);
    }

    @ResponseBody
    @RequestMapping("/like_pet_dogs")
    public Msg dogs_like(@RequestParam(value = "pn", defaultValue = "1") Integer pn, @RequestParam(value = "petName") String petName) {
        // 引入PageHelper分页插件
        // 在查询之前只需要调用，传入页码，以及每页的大小
        PageHelper.startPage(pn, 4);
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Pet> pets = petService.like_pet_dogs(petName, petName, petName);
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数
        PageInfo page = new PageInfo(pets, 3);
        return Msg.success().add("pageInfo", page);
    }

    //主人上传图片
    @RequestMapping("/upload")
    @ResponseBody
    public Msg uploadUserPic(@RequestParam(value = "upfile[]")MultipartFile[] files, @RequestParam(value = "user_id") Integer user_id, @RequestParam(value = "pet_id") Integer pet_id ,HttpServletRequest request) {
        int count = 0;
        if (user_id!=null) {
            System.out.println(files + "chang:" + files.length);
           Verification verification= userService.findVerificationByUserId(user_id);
            if (null!=verification) {
//        if (null != files && files.length > 0) {
                for (MultipartFile file : files) {
                    String picName = UUID.randomUUID().toString();//生成唯一识别码
                    //获取上传文件的元素名字
                    String name = file.getOriginalFilename();
                    String extname = name.substring(name.lastIndexOf("."));
                    String filename = picName + extname;
                    //存储数据库，只需要把filename写入数据库
                    Photo photo = new Photo();
                    photo.setUser_id(user_id);
                    photo.setPet_id(pet_id);
                    photo.setPhoto(filename);
                    petService.add_photo_by_master(photo);
                    //上传文件
                    try {
                        file.transferTo(new File("F:/MyUpload/" +filename));
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            }else {
                //将实名验证的图片的第一张存入其中
                String picName = UUID.randomUUID().toString();//生成唯一识别码
                //获取上传文件的元素名字
                String name = files[0].getOriginalFilename();
                String extname = name.substring(name.lastIndexOf("."));
                String filename = picName + extname;
                if (userService.add_photo_by_verification(filename,user_id)>0){
                    //上传文件
                    try {
                        files[0].transferTo(new File("F:/MyUpload/" + filename));
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                    System.out.println("实名验证上传图片成功");
                }
            }
//        }
            return Msg.success();
        }
        return Msg.fail();

    }
    //查找主人上传宠物的图片
    @RequestMapping("/pet_photo")
    @ResponseBody
    public Msg prt_photo(@RequestParam("user_id")Integer user_id,@RequestParam("pet_id")Integer pet_id){
        // startPage后面紧跟的这个查询就是一个分页查询
        List<Photo> pets = petService.find_photo_list(user_id,pet_id);
        // 使用pageInfo包装查询后的结果，只需要将pageInfo交给页面就行了。
        // 封装了详细的分页信息,包括有我们查询出来的数据，传入连续显示的页数

        return Msg.success().add("photo", pets);
    }

}
