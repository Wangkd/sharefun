package com.sharefun.model;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangkd on 12/17/16.
 */
public class BlogTag {
    private int tagId;
    private String tagTitle;

    public void setTagId(int tagId)     {this.tagId = tagId;}
    public void setTagTitle(String tagTitle) {
        this.tagTitle = tagTitle;
    }

    public int getTagId() {
        return tagId;
    }
    public String getTagTitle() {
        return tagTitle;
    }
}
