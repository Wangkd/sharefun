package com.sharefun.model;

/**
 * Created by wangkd on 12/15/16.
 */
public class Blog {
    private String blogTitle;
    private String blogContent;

    public void setBlogTitle(String blogTitle) {
        this.blogTitle = blogTitle;
    }

    public void setBlogContent(String blogContent) {
        this.blogContent = blogContent;
    }

    public String getBlogTitle() {
        return blogTitle;
    }

    public String getBlogContent() {
        return blogContent;
    }
}
