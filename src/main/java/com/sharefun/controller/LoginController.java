package com.sharefun.controller;

import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.context.request.WebRequest;
import com.sharefun.dao.UserDao;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by pengyang on 2016/12/4.
 */
@Controller
@SessionAttributes("user")
public class LoginController {
    private UserDao userDao;

    public void setUserDao(UserDao userDao){
        this.userDao = userDao;
    }
    public UserDao getUserDao(){
        return userDao;
    }

    @RequestMapping(value = "/signin", method = RequestMethod.GET)
    public String signIn(){
        return "signin";
    }

    @RequestMapping(value = "/signout", method = RequestMethod.GET)
    public String signOut(SessionStatus status){
        status.setComplete();
        return "index";
    }
    @RequestMapping(value = "/checkUser", method = RequestMethod.POST)
    public ModelAndView checkUser(HttpServletRequest request){
        String emailAddress = request.getParameter("email");
        String passWord = request.getParameter("password");
        ModelAndView mav = new ModelAndView();
        if(userDao.checkUser(emailAddress,passWord)){
            mav.addObject("user", userDao.getUser(emailAddress));
            mav.setViewName("index");
        }else{
            mav.addObject("error", "用户名或者密码不匹配");
            mav.setViewName("signin");
        }
        return mav;
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(){
        return "index";
    }


}
