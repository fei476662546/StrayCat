package com.service.impl;

import com.entity.Adopt;
import com.mapper.AdoptMapper;
import com.service.AdoptService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:42
 */
@Service
public class AdoptServiceImpl implements AdoptService {
    @Autowired
    private AdoptMapper adoptMapper;
    @Override
    public List<Adopt> getAll() {
        return adoptMapper.getAll();
    }
}
