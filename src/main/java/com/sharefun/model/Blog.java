package com.sharefun.model;

import java.security.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by wangkd on 12/15/16.
 */
public class Blog {
    private int blogId;
    private String blogTitle;
    private String blogContent;
    private int authorId;
    private Date createdDate;
    private Date updatedDate;
    private int pageClick;
    private String blogAbstract;

    public void setPageClick(int pageClick) {
        this.pageClick = pageClick;
    }

    public void setBlogId(int blogId) {
        this.blogId = blogId;
    }

    public void setAuthorId(int authorId) {
        this.authorId = authorId;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }

    public void setBlogAbstract(String blogAbstract) {
        this.blogAbstract = blogAbstract;
    }

    public void setBlogContent(String blogContent) {
        this.blogContent = blogContent;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public void setUpdatedDate(Date updatedDate) {
        this.updatedDate = updatedDate;
    }

    public int getBlogId() {
        return blogId;
    }

    public int getAuthorId() {
        return authorId;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public String getBlogAbstract() {
        return blogAbstract;
    }

    public String getBlogContent() {
        return blogContent;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public Date getUpdatedDate() {
        return updatedDate;
    }

    public int getPageClick() {
        return pageClick;
    }
}
