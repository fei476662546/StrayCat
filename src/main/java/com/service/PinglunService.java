package com.service;

import com.entity.Pinglun;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:42
 */
public interface PinglunService {
    int addPinglun(Pinglun pinglun);
    int delPinglunById(Integer id);
    List<Pinglun> getAllPinglun();
}
