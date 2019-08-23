package com.mapper;

import com.entity.Adopt;

import com.entity.User;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:39
 */
public interface AdoptMapper {
    List<Adopt> getAll();
    int updateAdoptUser(User User);
}
