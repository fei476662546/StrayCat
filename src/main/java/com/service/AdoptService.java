package com.service;

import com.entity.Adopt;
import com.entity.Pet;
import com.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:42
 */
public interface AdoptService {
    List<Adopt> getAll();
    int updateAdoptUser(User User);
    List<Adopt> adoptApply();
    User findApplyUser(Integer AdoptId);
    int updateUserState(User user);
    int updatePetState(Pet pet);
    int updateApply(Adopt adopt);
    int addApplyAdopt(Adopt adopt);
    int delAdoptById(Integer id);
    Adopt getAdoptById(Integer id);
    int updateAdopt(Adopt adopt);
    int findApplyByPetName(String petName);
}
