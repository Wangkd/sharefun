package com.sharefun.controller;

import com.sharefun.dao.*;
import com.sharefun.model.Blog;
import com.sharefun.model.BlogTag;
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
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangkd on 12/11/16.
 */

@Controller
public class UserController {
    private BlogDao blogDao;
    private PicDao picDao;
    private TagDao tagDao;
    private UserDao userDao;
    private BlogCommentDao blogCommentDao;

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public void setBlogDao(BlogDao blogDao) {
        this.blogDao = blogDao;
    }

    public void setPicDao(PicDao picDao) {
        this.picDao = picDao;
    }

    public void setTagDao(TagDao tagDao) {
        this.tagDao = tagDao;
    }

    public void setBlogCommentDao(BlogCommentDao blogCommentDao) {
        this.blogCommentDao = blogCommentDao;
    }

    @RequestMapping(value = "/user", method = RequestMethod.GET)
    public String userInfo(@RequestParam("user_id") int userId, HttpServletRequest request){
        User user = userDao.getUser(userId);
        List<Blog> blogList = blogDao.getBlogsOfAuthor(userId);
        List<BlogTag> blogTagList = tagDao.getTagsOfUser(userId);
        List<User> usersFollowedByUser = userDao.getUsersFollowedByUser(userId);
        List<User> usersFollowingUser = userDao.getUsersFollowingUser(userId);
        List<User> userList = new ArrayList<>();
        List<Integer> numOfStarsList = new ArrayList<>();
        List<Integer> numOfComments = new ArrayList<>();
        for(int i=0;i<blogList.size();i++){
            int blogId = blogList.get(i).getBlogId();
            numOfStarsList.add(i, blogDao.getNumOfStars(blogId));
            int numOfCommentsForBlog = blogCommentDao.getCommentsOfBlog(blogId).size();
            numOfComments.add(i, numOfCommentsForBlog);
            userList.add(i, user);
        }
        request.setAttribute("user", user);
        request.setAttribute("blogList", blogList);
        request.setAttribute("tagList", blogTagList);
        request.setAttribute("usersFollowedByUser", usersFollowedByUser);
        request.setAttribute("usersFollowingUser", usersFollowingUser);
        request.setAttribute("userList", userList);
        request.setAttribute("numOfComments", numOfComments);
        request.setAttribute("numOfStarsList", numOfStarsList);
        return "userinfo";
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

                //picDao.addPicture(file.getName(),"/resources/" + file.getOriginalFilename(), 1 );
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
