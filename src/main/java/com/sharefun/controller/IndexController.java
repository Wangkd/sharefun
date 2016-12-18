package com.sharefun.controller;

import com.sharefun.dao.BlogDao;
import com.sharefun.dao.TagDao;
import com.sharefun.dao.UserDao;
import com.sharefun.model.Blog;
import com.sharefun.model.BlogTag;
import com.sharefun.model.User;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wangkd on 12/15/16.
 */
@Controller
public class IndexController {
    private BlogDao blogDao;
    private TagDao tagDao;
    private UserDao userDao;

    public void setBlogDao(BlogDao blogDao){this.blogDao = blogDao;}

    public void setTagDao(TagDao tagDao) {
        this.tagDao = tagDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
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
        Blog blog = blogDao.getBlog(1);
        List<BlogTag> blogTags = tagDao.getTagsOfBlog(1);
        User author = userDao.getAuthorOfBlog(1);
        request.setAttribute("blog", blog);
        request.setAttribute("blogTags", blogTags);
        request.setAttribute("author", author);
        return "blog_detail";
    }
}
