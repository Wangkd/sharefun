package com.sharefun.controller;

import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.sharefun.dao.UserDao;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by pengyang on 2016/12/9.
 */
@Controller
public class SignUpController {
    private UserDao userDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public UserDao getUserDao(UserDao userDao){
        return userDao;
    }

    @RequestMapping(value = "/signup", method = RequestMethod.GET)
    public String signUp(){
        return "signup";
    }

    @RequestMapping(value = "/checkemail", method = RequestMethod.POST)
    public ModelAndView checkEmailAddress (HttpServletRequest request){
        String userName = request.getParameter("username");
        String emailAddress = request.getParameter("email");
        String passWord = request.getParameter("password");
        ModelAndView mav = new ModelAndView();
        if(userDao.checkEmailAddress(userName,emailAddress,passWord)){
            mav.addObject("error","邮箱已存在");
            mav.setViewName("signup");
        }else{
            userDao.insertUser(userName,emailAddress,passWord);
            mav.setViewName("index");
        }
        return mav;
    }
}
