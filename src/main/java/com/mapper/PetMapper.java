package com.mapper;

import com.entity.Pet;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:37
 */
public interface PetMapper {
    List<Pet> getAllPet();
    int addPet(Pet pet);
    int delPetById(Integer id);
    int updatePet(Pet pet);
    Pet findPetById(Integer id);
    Pet findpetByName(String name);
    void deleteBatchPet(@Param("ids") List<Integer> ids);//删除一推
}
