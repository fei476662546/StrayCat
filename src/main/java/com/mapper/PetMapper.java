package com.mapper;

import com.entity.*;
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

    Pet findPetByName(String name);

    void deleteBatchPet(@Param("ids") List<Integer> ids);//删除一堆

    List<Pet> showlist(int index);

    int pagecount();
    List<Pet> likeByPetName(@Param("name1") String name1,@Param("name2") String name2,@Param("name3") String name3);
    //模糊所有有主人的动物
    List<Pet> like_pet_have_master(@Param("name1") String name1,@Param("name2") String name2,@Param("name3") String name3);
    //模糊所有无主人的动物
    List<Pet> like_pet_no_master(@Param("name1") String name1,@Param("name2") String name2,@Param("name3") String name3);
    //模糊所有猫
    List<Pet> like_pet_cats(@Param("name1") String name1,@Param("name2") String name2,@Param("name3") String name3);
    //模糊所有狗
    List<Pet> like_pet_dogs(@Param("name1") String name1,@Param("name2") String name2,@Param("name3") String name3);
     User findMasterByPetId(@Param("id") Integer  id);
     //添加主人的ID
    int addMasterId( Pet pet);
    //查询所有没有主人的动物
    List<Pet> find_Pet_no_master();
    //查询所有有主人的动物
    List<Pet> find_Pet_have_master();
    //查所有猫
    List<Pet> find_all_cats();
    //查所有狗
    List<Pet> find_all_dogs();
    //点赞数加1
    int pet_counts_add(Integer id);
    //插入点赞记录
    int add_pet_count_add(Zan_pet zan_pet);
    //用户是否为此动物点过赞
    User find_user_is_zan_pet(@Param("user_id")Integer user_id,@Param("pet_id") Integer pet_id);
//    查看用户是否对此条评论进行过点赞
    Pinglun find_user_zan_pet_pl(@Param("user_id")Integer user_id,@Param("pet_id")Integer pet_id);
    //主人添加宠物图片
      int add_photo_by_master(Photo photo);
      //查图片
    List<Photo> find_photo_list(@Param("user_id")Integer user_id,@Param("pet_id")Integer pet_id);
}