package com.sharefun.controller;

import com.sharefun.dao.BlogDao;
import com.sharefun.dao.PicDao;
import com.sharefun.dao.TagDao;
import com.sharefun.dao.UserDao;
import com.sharefun.model.Blog;
import com.sharefun.model.BlogTag;
import com.sharefun.model.Picture;
import com.sharefun.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * Created by wangkd on 1/2/17.
 */
@Controller
public class BlogController {
    private BlogDao blogDao;
    private TagDao tagDao;
    private PicDao picDao;
    private UserDao userDao;

    public void setBlogDao(BlogDao blogDao) {
        this.blogDao = blogDao;
    }

    public void setPicDao(PicDao picDao) {
        this.picDao = picDao;
    }

    public void setTagDao(TagDao tagDao) {
        this.tagDao = tagDao;
    }

    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @RequestMapping("/blog_detail")
    public String getBlog(HttpServletRequest request){
        int blogId = Integer.valueOf(request.getParameter("id"));
        Blog blog = blogDao.getBlog(blogId);
        blogDao.updateBlogClick(blogId, blog.getPageClick() + 1);
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

    @RequestMapping(value = "/editor")
    public String edit(){
        return "richtext";
    }
}
