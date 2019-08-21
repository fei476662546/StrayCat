package com.service.impl;

import com.entity.Admit;
import com.mapper.AdmitMapper;
import com.service.AdmitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:44
 */
@Service
public class AdmitServiceImpl implements AdmitService {
    @Autowired
   private AdmitMapper admitMapper;

    @Override
    public Admit findAdmitById(int id) {
        return null;
    }

    @Override
    public int addAdmit(Admit admit) {
        return 0;
    }

    @Override
    public int delAdmitById(int id) {
        return 0;
    }

    @Override
    public int updateAdmitById(Admit admit) {
        return 0;
    }
}
