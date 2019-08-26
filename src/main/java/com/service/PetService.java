package com.service;

import com.entity.Pet;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:41
 */
public interface PetService {
    List<Pet> getAllPet();
    int addPet(Pet pet);
    int delPetById(Integer id);
    int updatePet(Pet pet);
    Pet findPetById(Integer id);
    Pet findPetByName(String name);
    void deleteBatchPet(List<Integer> ids);
}
