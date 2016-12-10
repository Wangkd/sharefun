package com.sharefun.dao;

/**
 * Created by pengyang on 2016/12/4.
 */
public interface UserDao {
    public boolean checkUser(String eamilAddress, String passWord);
    public boolean checkEmailAddress(String userName, String emailAddress, String passWord);
    public void insertUser(String userName, String emailAddress, String passWord);
}
