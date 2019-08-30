package com.service.impl;

import com.entity.Admit;
import com.entity.Team;
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
        return admitMapper.findAdmitById(id);
    }

    @Override
    public int addAdmit(Admit admit) {
       return admitMapper.addAdmit(admit);
    }

    @Override
    public int delAdmitById(int id) {
        return admitMapper.delAdmitById(id);
    }

    @Override
    public int updateAdmitById(Admit admit) {
        return admitMapper.updateAdmitById(admit);
    }

    @Override
    public Admit AdmitLogin(String username, String password) {
        return admitMapper.AdmitLogin(username,password);
    }

    @Override
    public int addTeamApply(Team team) {
        return admitMapper.addTeamApply(team);
    }
}
