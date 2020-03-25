package com.service.impl;

import com.entity.*;
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
    public Pet findPetByName(String name) {
        return petMapper.findPetByName(name);
    }

    @Override
    public void deleteBatchPet(List<Integer> ids) {
        petMapper.deleteBatchPet(ids);
    }

    @Override
    public List<Pet> showlist(int index) {
        return petMapper.showlist(index);
    }

    @Override
    public int pagecount() {
        return petMapper.pagecount();
    }

    @Override
    public List<Pet> like_pet_have_master(String name1, String name2, String name3) {
        return petMapper.like_pet_have_master(name1,name2,name3);
    }

    @Override
    public List<Pet> like_pet_no_master(String name1, String name2, String name3) {
        return petMapper.like_pet_no_master(name1,name2,name3);
    }

    @Override
    public List<Pet> like_pet_cats(String name1, String name2, String name3) {
        return petMapper.like_pet_cats(name1,name2,name3);
    }

    @Override
    public List<Pet> like_pet_dogs(String name1, String name2, String name3) {
        return petMapper.like_pet_dogs(name1,name2,name3);
    }

    @Override
    public List<Pet> likeByPetName(String name1, String name2, String name3) {
        return petMapper.likeByPetName(name1,name2,name3);
    }


    @Override
    public User findMasterByPetId(Integer id) {
        return petMapper.findMasterByPetId(id);
    }

    @Override
    public int addMasterId(Pet pet) {
        return petMapper.addMasterId(pet);
    }

    @Override
    public List<Pet> find_Pet_no_master() {
        return petMapper.find_Pet_no_master();
    }

    @Override
    public List<Pet> find_Pet_have_master() {
        return petMapper.find_Pet_have_master();
    }

    @Override
    public List<Pet> find_all_cats() {
        return petMapper.find_all_cats();
    }

    @Override
    public List<Pet> find_all_dogs() {
        return petMapper.find_all_dogs();
    }

    @Override
    public int pet_counts_add(Integer id) {
        return petMapper.pet_counts_add(id);
    }

    @Override
    public int add_pet_count_add(Zan_pet zan_pet) {
        return petMapper.add_pet_count_add(zan_pet);
    }

    @Override
    public User find_user_is_zan_pet(Integer user_id, Integer pet_id) {
        return petMapper.find_user_is_zan_pet(user_id,pet_id);
    }

    @Override
    public Pinglun find_user_zan_pet_pl(Integer user_id, Integer pet_id) {
        return petMapper.find_user_zan_pet_pl(user_id,pet_id);
    }

    @Override
    public int add_photo_by_master(Photo photo) {
        return petMapper.add_photo_by_master(photo);
    }

    @Override
    public List<Photo> find_photo_list(Integer user_id, Integer pet_id) {
        return petMapper.find_photo_list(user_id,pet_id);
    }
}
