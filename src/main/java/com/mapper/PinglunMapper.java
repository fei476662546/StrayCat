package com.mapper;

import com.entity.Pinglun;
import com.entity.User;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:38
 */
public interface PinglunMapper {
    int addPinglun(Pinglun pinglun);
    int delPinglunById(Integer id);
    List<Pinglun> getAllPinglun();
    List<Pinglun> getPinglunByPetName(String petName);
    Pinglun getPinglunById(Integer id);
    int updatePinglun(Pinglun pinglun);
    void deleteBatch(List<Integer> ids);
    //查此动物所有评论
    List<Pinglun> getPlsByPetId(Integer id);
    //赞加1
    int pl_zan_count_add(Integer id);
    //赞减1
    int pl_zan_count_reduce(Integer id);
    //查评论者
    User find_user_by_pl_id(Integer id);
}
