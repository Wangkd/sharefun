package com.sharefun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.sharefun.dao.UserDao;
/**
 * Created by pengyang on 2016/12/4.
 */
@Controller
public class LoginController {
    private UserDao userDao;

    public void setUserDao(UserDao userDao){
        this.userDao = userDao;
    }
    public UserDao getUserDao(){
        return userDao;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {

        System.out.print("1");
        String useremail = "123@qq.com";
        String userPassWord = "123456";
        if(userDao.signin(useremail,userPassWord))
            return "index";
        else
            return "fail";
    }

}
