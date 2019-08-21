package com.service.impl;

import com.entity.Pet;
import com.mapper.PetMapper;
import com.service.PetService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:43
 */
@Service
public class PetServiceImpl implements PetService {
    @Autowired
   private PetMapper petMapper;
    @Override
    public List<Pet> getAllPet() {
        return petMapper.getAllPet();
    }

    @Override
    public int addPet(Pet pet) {
        return petMapper.addPet(pet);
    }

    @Override
    public int delPetById(Integer id) {
        return petMapper.delPetById(id);
    }

    @Override
    public int updatePet(Pet pet) {
        return petMapper.updatePet(pet);
    }

    @Override
    public Pet findPetById(Integer id) {
        return petMapper.findPetById(id);
    }

    @Override
    public Pet findpetByName(String name) {
        return petMapper.findpetByName(name);
    }
}
