package com.service.impl;


import com.entity.Remind;
import com.entity.User;
import com.entity.Verification;
import com.mapper.UserMapper;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author yyh
 * @date 2019/8/13-9:57
 */
@Service
public class UserSeriveImpl implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Override
    public User getUserById(Integer id) {
        return userMapper.getUserById(id);
    }

    @Override
    public List<User> getUsers() {
        return userMapper.getUsers();
    }

    @Override
    public int deleteUserById(Integer id) {
        return userMapper.deleteUserById(id);
    }

    @Override
    public int updateUser(User user) {
        return userMapper.updateUser(user);
    }

    @Override
    public int saveUser(User user) {
        return userMapper.saveUser(user);
    }

    @Override
    public void deleteBatch(List<Integer> ids) {
        userMapper.deleteBatch(ids);
    }

    @Override
    public User login(String username, String password) {
     return userMapper.login(username,password);


    }

    @Override
    public int updatePic(String pic, Integer id) {
        return userMapper.updatePic(pic,id);
    }

    @Override
    public int updateRemark(Integer id) {
        return userMapper.updateRemark(id);
    }

    @Override
    public  List<User> likeByUsername(String username) {
        return userMapper.likeByUsername(username);
    }

    @Override
    public User findUserByusername(String name) {
        return userMapper.findUserByusername(name);
    }

    @Override
    public int updatePassword(String password, Integer id) {
        return userMapper.updatePassword(password,id);
    }

    @Override
    public int remindCount(int id) {
        return userMapper.remindCount(id);
    }

    @Override
    public int remindAdd(Remind remind) {
        return userMapper.remindAdd(remind);
    }

    @Override
    public int remindDel(Integer id) {
        return userMapper.remindDel(id);
    }

    @Override
    public int verificationAdd(Verification verification) {
        return userMapper.verificationAdd(verification);
    }

    @Override
    public Verification findVerificationByUserId(Integer id) {
        return userMapper.findVerificationByUserId(id);
    }

    @Override
    public int addPetId(User user) {
        return userMapper.addPetId(user);
    }

    @Override
    public int UserRemindCountAdd(Integer id) {
        return userMapper.UserRemindCountAdd(id);
    }

    @Override
    public int UserRemindCountReduce(Integer id) {
        return userMapper.UserRemindCountReduce(id);
    }

    @Override
    public List<Remind> findAllRemind(Integer user_id) {
        return userMapper.findAllRemind(user_id);
    }

    @Override
    public Remind findRemindById(Integer id) {
        return userMapper.findRemindById(id);
    }

    @Override
    public int findRemindCount(Integer id) {
        return userMapper.findRemindCount(id);
    }

    @Override
    public int verificationToUsers(User user) {
        return userMapper.verificationToUsers(user);
    }

    @Override
    public int add_photo_by_verification(String photo,Integer id) {
        return userMapper.add_photo_by_verification(photo,id);
    }


}
