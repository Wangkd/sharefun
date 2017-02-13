package com.sharefun.dao;

import com.sharefun.model.BlogComment;

import java.util.List;

/**
 * Created by wangkd on 1/2/17.
 */
public interface BlogCommentDao {
    public List<BlogComment> getCommentsOfBlog(int blogId);
}
