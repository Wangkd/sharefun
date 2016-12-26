package com.sharefun.controller;

import com.sharefun.dao.BlogDao;
import com.sharefun.dao.PicDao;
import com.sharefun.dao.TagDao;
import com.sharefun.dao.UserDao;
import com.sharefun.model.Blog;
import com.sharefun.model.BlogTag;
import com.sharefun.model.Picture;
import com.sharefun.model.User;
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
import java.util.List;

/**
 * Created by wangkd on 12/15/16.
 */
@Controller
public class IndexController {
    private BlogDao blogDao;
    private TagDao tagDao;
    private UserDao userDao;
    private PicDao picDao;

    public void setBlogDao(BlogDao blogDao){this.blogDao = blogDao;}

    public void setTagDao(TagDao tagDao) {
        this.tagDao = tagDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    public void setPicDao(PicDao picDao) {
        this.picDao = picDao;
    }

    //public BlogDao getBlogDao(){return blogDao;}

    @RequestMapping("/")
    public String getAll(HttpServletRequest request) {
        List<Blog> blogList = blogDao.getBlogs(5);
        List<BlogTag> blogTags = tagDao.getTags(7);
        request.setAttribute("blogList", blogList);
        request.setAttribute("blogTags", blogTags);
        return "index";
    }

    @RequestMapping("/blog_detail")
    public String getBlog(HttpServletRequest request){
        int blogId = Integer.valueOf(request.getParameter("id"));
        Blog blog = blogDao.getBlog(blogId);
        List<BlogTag> blogTags = tagDao.getTagsOfBlog(blogId);
        List<Picture> pictures = picDao.getPicturesOfBlog(blogId);
        User author = userDao.getAuthorOfBlog(blogId);
        request.setAttribute("blog", blog);
        request.setAttribute("blogTags", blogTags);
        request.setAttribute("author", author);
        request.setAttribute("pictures", pictures);
        return "blog_detail";
    }

    @RequestMapping(value = "/markdown")
    public String markdown(){
        return "markdown";
    }





}
