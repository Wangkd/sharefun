package com.sharefun.dao;

import com.sharefun.model.Picture;

import java.util.List;

/**
 * Created by wangkd on 12/22/16.
 */
public interface PicDao {
    public void addPicture(String picTitle, String picPath, int blogId);
    public void deletePicture(int id);
    public void updatePicture(String picTitle, String picPath);
    public List<Picture> getPicturesOfBlog(int blogId);
}
