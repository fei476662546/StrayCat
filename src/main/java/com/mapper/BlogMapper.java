package com.mapper;

import com.entity.Blog;
import com.entity.Pinglun;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/9/6  11:11
 */
public interface BlogMapper {
    List<Blog> selectAll ();
    List<Pinglun> getPinglunByObj (String s);
}
