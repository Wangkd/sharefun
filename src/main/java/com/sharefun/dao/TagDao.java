package com.sharefun.dao;

import com.sharefun.model.BlogTag;

import java.util.List;

/**
 * Created by wangkd on 12/18/16.
 */
public interface TagDao {
    public void addTag(String title);
    public void tagSubbedByUser(int tagId, int userId);
    public void tagUnSubbedByUser(int tagId, int userId);
    public boolean isTagSubbedByUser(int tagId, int userId);
    public BlogTag getTag(int tagId);
    public List<BlogTag> getTags(int num);
    public List<BlogTag> getTagsOfBlog(int blogId);
    public List<BlogTag> getTagsOfUser(int userId);
}
