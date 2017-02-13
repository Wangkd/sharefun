package com.sharefun.dao;

import com.sharefun.model.Blog;
import com.sharefun.model.BlogTag;
import com.sharefun.model.User;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangkd on 12/15/16.
 */
public interface BlogDao {
    public void addBlog(int userId, String title, String content);
    public void deleteBlog(int blogId);
    public void updateBlog(int blogId, String title, String content);
    public void updateBlogClick(int blogId, int blogClick);
    public void generateAbstract(int blogId, String blogContent);
    public Blog getBlog(int blogId);
    public int getNumOfStars(int blogId);
    public List<Blog> getBlogs(int num);
    public List<Blog> getBlogsOfTag(int tagId);
    public List<Blog> getBlogsOfAuthor(int userId);
    public List<Blog> getStaredBlogsOfUser(int userId);
}
