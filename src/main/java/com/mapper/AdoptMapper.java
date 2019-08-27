package com.mapper;

import com.entity.Adopt;

import com.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:39
 */
public interface AdoptMapper {
    List<Adopt> getAll();
    int updateAdoptUser(User User);
    List<Adopt> adoptApply();
     User findApplyUser(Integer AdoptId);
    int updateUserState(@Param("state") Integer state, @Param("id")Integer id);
    int updatePetState(@Param("state") Integer state,@Param("petName")String petName);
    int updateApply(@Param("apply") Integer apply, @Param("id")Integer id);
}
