package com.sharefun.controller;

import com.sharefun.dao.BlogDao;
import com.sharefun.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;

/**
 * Created by wangkd on 12/11/16.
 */

@Controller
public class UserController {
    private BlogDao blogDao;

    public void setBlogDao(BlogDao blogDao) {
        this.blogDao = blogDao;
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String userInfo(){
        return "user";
    }

    @RequestMapping(value = "/addblog")
    public String addBlog(){
        return "addBlog";
    }

    @RequestMapping(value = "/uploadImage", method = RequestMethod.POST)
    public String fileUpload(HttpServletRequest request, @RequestParam("file") MultipartFile file){
        if (!file.isEmpty()) {
            try {
                // 文件保存路径
                String filePath = request.getContextPath() + "/resources/"
                        + file.getOriginalFilename();
                // 转存文件
                file.transferTo(new File(filePath));
                System.out.println("file path is:" + filePath);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return "redirect: /addblog";
    }

    @RequestMapping(value = "/submitblog", method = RequestMethod.POST)
    public String submitBlog(@SessionAttribute("user") User user, HttpServletRequest request){
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        System.out.printf(title + "  " + content + user.getEmailAddress());
        blogDao.addBlog(user.getUserId(),title,content);
        System.out.printf(user.getUserName());
        return "redirect: /";
    }
}
