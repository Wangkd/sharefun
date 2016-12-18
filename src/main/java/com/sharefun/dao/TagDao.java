package com.sharefun.dao;

import com.sharefun.model.BlogTag;

import java.util.List;

/**
 * Created by wangkd on 12/18/16.
 */
public interface TagDao {
    public void addTag(String title);
    public List<BlogTag> getTags(int num);
    public List<BlogTag> getTagsOfBlog(int blogId);
}
