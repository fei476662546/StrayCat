package com.service.impl;

import com.entity.Adopt;
import com.entity.Pet;
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
    public int updateUserState(User user) {
        return adoptMapper.updateUserState(user);
    }

    @Override
    public int updatePetState(Pet pet) {
        return adoptMapper.updatePetState(pet);
    }

    @Override
    public int updateApply(Adopt adopt) {
        return adoptMapper.updateApply(adopt);
    }

    @Override
    public int addApplyAdopt(Adopt adopt) {
        return adoptMapper.addApplyAdopt(adopt);
    }

    @Override
    public int delAdoptById(Integer id) {
        return adoptMapper.delAdoptById(id);
    }

    @Override
    public Adopt getAdoptById(Integer id) {
        return adoptMapper.getAdoptById(id);
    }

    @Override
    public int updateAdopt(Adopt adopt) {
        return adoptMapper.updateAdopt(adopt);
    }

    @Override
    public int findApplyByPetName(String petName) {
        return adoptMapper.findApplyByPetName(petName);
    }


}
