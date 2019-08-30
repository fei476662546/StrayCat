package com.mapper;

import com.entity.Pinglun;

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

}
