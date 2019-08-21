package com.mapper;

import com.entity.Admit;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:38
 */
public interface AdmitMapper {
    Admit findAdmitById (int id);//查找所有管理
    int addAdmit(Admit admit);
    int delAdmitById(int id);
    int updateAdmitById(Admit admit);
}
