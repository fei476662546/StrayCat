package com.service;

import com.entity.Admit;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:41
 */
public interface AdmitService {
    Admit findAdmitById (int id);//查找所有管理
    int addAdmit(Admit admit);
    int delAdmitById(int id);
    int updateAdmitById(Admit admit);
}
