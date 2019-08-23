package com.service;

import com.entity.Adopt;
import com.entity.User;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/8/21  8:42
 */
public interface AdoptService {
    List<Adopt> getAll();
    int updateAdoptUser(User User);
}
