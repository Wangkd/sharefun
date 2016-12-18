package com.sharefun.dao;

import com.sharefun.model.User;

import java.util.List;

/**
 * Created by pengyang on 2016/12/4.
 */
public interface UserDao {
    public boolean checkUser(String emailAddress, String passWord);
    public boolean checkEmailAddress(String userName, String emailAddress, String passWord);
    public void insertUser(String userName, String emailAddress, String passWord);
    public void changeuserNameOrPassword(int userId, String userName, String passWord);
    public User getUser(String emailAddress);
    public User getAuthorOfBlog(int blogId);
    public List<User> getUsersOfStaredBlog(int blogId);
}
