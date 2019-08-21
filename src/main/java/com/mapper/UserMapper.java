package com.mapper;


import com.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;


/**
 * @author yyh
 * @date 2019/8/13-10:06
 */
public interface UserMapper {
    // 查询某个用户
    User getUserById(Integer id);
    // 查询所有用户信息
    List<User> getUsers();
    // 删除用户
    int deleteUserById(Integer id);
    // 修改
    int updateUser(User user);
    int saveUser(User user);//插入用户
    void deleteBatch(@Param("ids") List<Integer> ids);//删除一推
}
