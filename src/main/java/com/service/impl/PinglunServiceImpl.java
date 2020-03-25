package com.service.impl;

import com.entity.Pinglun;
import com.entity.User;
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

    @Override
    public Pinglun getPinglunById(Integer id) {
        return pinglunMapper.getPinglunById(id);
    }

    @Override
    public int updatePinglun(Pinglun pinglun) {
        return pinglunMapper.updatePinglun(pinglun);
    }

    @Override
    public void deleteBatch(List<Integer> ids) {
        pinglunMapper.deleteBatch(ids);
    }

    @Override
    public List<Pinglun> getPlsByPetId(Integer id) {
        return pinglunMapper.getPlsByPetId(id);
    }

    @Override
    public int pl_zan_count_add(Integer id) {
        return pinglunMapper.pl_zan_count_add(id);
    }

    @Override
    public int pl_zan_count_reduce(Integer id) {
        return pinglunMapper.pl_zan_count_reduce(id);
    }

    @Override
    public User find_user_by_pl_id(Integer id) {
        return pinglunMapper.find_user_by_pl_id(id);
    }
}
