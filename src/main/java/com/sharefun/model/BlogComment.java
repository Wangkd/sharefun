package com.sharefun.model;

/**
 * Created by wangkd on 1/2/17.
 */
public class BlogComment {
    private int commentId;
    private int userId;
    private int blogId;
    private int numOfLikes;
    private int parentCommentId;

    public void setBlogId(int blogId) {
        this.blogId = blogId;
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public void setNumOfLikes(int numOfLikes) {
        this.numOfLikes = numOfLikes;
    }

    public void setParentCommentId(int parentCommentId) {
        this.parentCommentId = parentCommentId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getUserId() {
        return userId;
    }

    public int getBlogId() {
        return blogId;
    }

    public int getCommentId() {
        return commentId;
    }

    public int getNumOfLikes() {
        return numOfLikes;
    }

    public int getParentCommentId() {
        return parentCommentId;
    }
}
