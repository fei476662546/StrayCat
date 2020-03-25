package com.service;

import com.entity.Remind;
import com.entity.User;
import com.entity.Verification;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * @author yyh
 * @date 2019/8/13-9:57
 */
public interface UserService {
    // 查询某个用户
    User getUserById(Integer id);

    // 查询所有用户信息
    List<User> getUsers();

    // 删除用户
    int deleteUserById(Integer id);

    // 修改
    int updateUser(User user);

    int saveUser(User user);

    void deleteBatch(List<Integer> ids);

    User login(@Param("username") String username, @Param("password") String password);

    int updatePic(@Param("pic") String pic, @Param("id") Integer id);

    int updateRemark(Integer id);

    List<User> likeByUsername(@Param("name") String name);

    User findUserByusername(String username);

    int updatePassword(@Param("password") String password, @Param("id") Integer id);

    //查询提醒个数
    int remindCount(@Param("id") int id);

    //添加提醒个数
    int remindAdd(Remind remind);

    //删除提醒
    int remindDel(Integer id);

    //添加实名验证
    int verificationAdd(Verification verification);

    //查找实名验证
    Verification findVerificationByUserId(Integer id);
    //添加宠物ID
    int addPetId(User user);
    //消息提示加一
    int UserRemindCountAdd(Integer id);
    //消息提示减一
    int UserRemindCountReduce(Integer id);
    //所有提醒
    List<Remind> findAllRemind(Integer user_id);
    //查提醒类byID
    Remind findRemindById(Integer id);
    //查消息个数
    int findRemindCount(Integer id);
    //添加实名
    int verificationToUsers(User user);
    //添加图片
    int add_photo_by_verification(@Param("id_card_photo") String photo,@Param("user_id")Integer user_id);

}
