package com.service.impl;

import com.entity.Pinglun;
import com.mapper.PinglunMapper;
import com.service.PinglunService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:44
 */
@Service
public class PinglunServiceImpl implements PinglunService {
    @Autowired
   private PinglunMapper pinglunMapper;
    @Override
    public int addPinglun(Pinglun pinglun) {
        return pinglunMapper.addPinglun(pinglun);
    }

    @Override
    public int delPinglunById(Integer id) {
        return pinglunMapper.delPinglunById(id);
    }

    @Override
    public List<Pinglun> getAllPinglun() {
        return pinglunMapper.getAllPinglun();
    }

    @Override
    public List<Pinglun> getPinglunByPetName(String petName) {
        return pinglunMapper.getPinglunByPetName(petName);
    }
}
