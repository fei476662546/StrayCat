package com.service.impl;

import com.entity.Adopt;
import com.entity.User;
import com.mapper.AdoptMapper;
import com.service.AdoptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:42
 */
@Service
public class AdoptServiceImpl implements AdoptService {
    @Autowired
    private AdoptMapper adoptMapper;
    @Override
    public List<Adopt> getAll() {
        return adoptMapper.getAll();
    }

    @Override
    public int updateAdoptUser(User User) {
        return adoptMapper.updateAdoptUser(User);
    }

    @Override
    public List<Adopt> adoptApply() {
        return adoptMapper.adoptApply();
    }

    @Override
    public User findApplyUser(Integer AdoptId) {
        return adoptMapper.findApplyUser(AdoptId);
    }

    @Override
    public int updateUserState(Integer state, Integer id) {
        return adoptMapper.updateUserState(state, id);
    }

    @Override
    public int updatePetState(Integer state, String petName) {
        return adoptMapper.updatePetState(state, petName);
    }

    @Override
    public int updateApply(Integer apply, Integer id) {
        return adoptMapper.updateApply(apply,id);
    }


}
