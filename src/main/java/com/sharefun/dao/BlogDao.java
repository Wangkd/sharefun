package com.sharefun.dao;

import com.sharefun.model.Blog;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangkd on 12/15/16.
 */
public interface BlogDao {
    public List<Blog> getBlogs(int num);
}
