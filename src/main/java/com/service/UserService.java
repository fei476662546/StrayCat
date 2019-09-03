package com.service;

import com.entity.User;
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
    User login(@Param("username") String username,@Param("password") String password);
    int updatePic(@Param("pic") String pic,@Param("id") Integer id);
    int updateRemark(Integer id);
}
