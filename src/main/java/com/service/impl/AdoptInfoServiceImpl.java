package com.service.impl;


import com.entity.AdoptInfo;
import com.entity.Pet;
import com.mapper.AdoptInfoMapper;
import com.service.AdoptInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Create by mysteriousTime
 * time on 2020-3-7  11:28
 */
@Service
public class AdoptInfoServiceImpl  implements AdoptInfoService {
    @Autowired
    private AdoptInfoMapper adoptInfoMapper;
    @Override
    public Pet findPetByUserId(Integer id) {
        return adoptInfoMapper.findPetByUserId(id);
    }

    @Override
    public int addAdoptInfo(AdoptInfo adoptInfo) {
        return adoptInfoMapper.addAdoptInfo(adoptInfo);
    }


}
