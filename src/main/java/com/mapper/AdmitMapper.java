package com.mapper;

import com.entity.Admit;
import com.entity.Team;
import org.apache.ibatis.annotations.Param;

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
    Admit AdmitLogin(@Param("username") String username, @Param("password") String password);//登录

}
