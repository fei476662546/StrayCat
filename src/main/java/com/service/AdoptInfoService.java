package com.service;

import com.entity.AdoptInfo;
import com.entity.Pet;

/**
 * Create by mysteriousTime
 * time on 2020-3-7  11:26
 */
public interface AdoptInfoService {
    Pet findPetByUserId(Integer id);

    int addAdoptInfo(AdoptInfo adoptInfo);
}
