package com.service;

import com.entity.Blog;
import com.entity.Pinglun;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/9/6  11:11
 */
public interface BlogService {
    List<Blog> selectAll ();
    List<Pinglun> getPinglunByObj (String s);
}
