package com.mapper;

import com.entity.AdoptInfo;
import com.entity.Pet;

/**
 * Create by mysteriousTime
 * time on 2020-3-7  11:24
 */
public interface AdoptInfoMapper {
     Pet findPetByUserId(Integer id);
     int addAdoptInfo(AdoptInfo adoptInfo);
}
