package com.sharefun.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangkd on 12/15/16.
 */
public class Blog {
    private int blogId;
    private String blogTitle;
    private String blogContent;
    private int author;

    public void setBlogId(int blogId) {
        this.blogId = blogId;
    }

    public void setAuthor(int author) {
        this.author = author;
    }

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }

    public void setBlogContent(String blogContent) {
        this.blogContent = blogContent;
    }

    public int getBlogId() {
        return blogId;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public String getBlogContent() {
        return blogContent;
    }

    public int getUserId() {
        return author;
    }
}
