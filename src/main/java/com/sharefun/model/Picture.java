package com.sharefun.model;

/**
 * Created by wangkd on 12/22/16.
 */
public class Picture {
    private int picId;
    private String picTitle;
    private String picPath;

    public void setPicId(int picId) {
        this.picId = picId;
    }

    public void setPicPath(String picPath) {
        this.picPath = picPath;
    }

    public void setPicTitle(String picTitle) {
        this.picTitle = picTitle;
    }

    public int getPicId() {
        return picId;
    }

    public String getPicPath() {
        return picPath;
    }

    public String getPicTitle() {
        return picTitle;
    }
}
