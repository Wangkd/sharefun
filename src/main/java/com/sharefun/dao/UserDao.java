package com.sharefun.dao;

/**
 * Created by pengyang on 2016/12/4.
 */
public interface UserDao {
    public void register(String name, String passWord, String emailAddress);
    public boolean signin(String eamilAddress, String passWord);
    public boolean checkUser();
}
