package com.service.impl;

import com.entity.Blog;
import com.entity.Pinglun;
import com.mapper.BlogMapper;
import com.service.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Create by mysteriousTime
 * time on 2019/9/6  11:12
 */
@Service
public class BlogServiceImpl implements BlogService {
    @Autowired
    private BlogMapper blogMapper;
    @Override
    public List<Blog> selectAll() {
        return blogMapper.selectAll();
    }

    @Override
    public List<Pinglun> getPinglunByObj(String s) {
        return blogMapper.getPinglunByObj(s);
    }
}
