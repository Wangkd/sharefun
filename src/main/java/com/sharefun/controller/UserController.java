package com.sharefun.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;
/**
 * Created by wangkd on 12/11/16.
 */

@Controller
public class UserController {
    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String userInfo(){
        return "user";
    }
}
