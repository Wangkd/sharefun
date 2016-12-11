package com.sharefun.dao;

import com.sharefun.model.User;

/**
 * Created by pengyang on 2016/12/4.
 */
public interface UserDao {
    public boolean checkUser(String emailAddress, String passWord);
    public boolean checkEmailAddress(String userName, String emailAddress, String passWord);
    public void insertUser(String userName, String emailAddress, String passWord);
    public User getUser(String emailAddress);
}
