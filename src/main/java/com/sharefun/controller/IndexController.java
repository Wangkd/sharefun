package com.sharefun.controller;

import com.sharefun.dao.*;
import com.sharefun.model.*;
import com.sun.org.apache.xpath.internal.operations.Mod;
import com.sun.xml.internal.ws.resources.HttpserverMessages;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangkd on 12/15/16.
 */
@Controller
public class IndexController {
    private BlogDao blogDao;
    private TagDao tagDao;
    private UserDao userDao;
    private BlogCommentDao blogCommentDao;

    public void setBlogDao(BlogDao blogDao){this.blogDao = blogDao;}

    public void setTagDao(TagDao tagDao) {
        this.tagDao = tagDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public void setBlogCommentDao(BlogCommentDao blogCommentDao) {
        this.blogCommentDao = blogCommentDao;
    }

    @RequestMapping("/")
    public String getAll(HttpServletRequest request) {
        List<Blog> blogList = blogDao.getBlogs(5);
        List<User> userList = new ArrayList<>();
        List<Integer> numOfStarsList = new ArrayList<>();
        List<Integer> numOfComments = new ArrayList<>();
        for(int i=0;i<blogList.size();i++){
            int blogId = blogList.get(i).getBlogId();
            userList.add(i,userDao.getAuthorOfBlog(blogId));
            numOfStarsList.add(i, blogDao.getNumOfStars(blogId));
            int numOfCommentsForBlog = blogCommentDao.getCommentsOfBlog(blogId).size();
            numOfComments.add(i, numOfCommentsForBlog);
        }
        List<BlogTag> blogTags = tagDao.getTags(7);
        request.setAttribute("blogList", blogList);
        request.setAttribute("blogTags", blogTags);
        request.setAttribute("userList", userList);
        request.setAttribute("numOfComments", numOfComments);
        request.setAttribute("numOfStarsList", numOfStarsList);
        return "index";
    }

    @RequestMapping("/richtext")
    public String editor(){
        return "richtext";
    }
}
