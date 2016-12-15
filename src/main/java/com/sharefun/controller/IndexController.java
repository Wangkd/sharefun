package com.sharefun.controller;

import com.sharefun.dao.BlogDao;
import com.sharefun.model.Blog;
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
    public void setBlogDao(BlogDao blogDao){this.blogDao = blogDao;}
    public BlogDao getBlogDao(){return blogDao;}

    @RequestMapping("/")
    public String getAll(HttpServletRequest request) {
        List<Blog> blogList = blogDao.getBlogs(5);
        for(Blog i : blogList){
            System.out.println(i.getBlogTitle());
        }
        request.setAttribute("blogList", blogList);
        /*
         * 这里返回值主要看applicationContext.xml文件中的prefix和suffix
         * 来决定跳转到/getAll.jsp页面的
         */
        return "index";
    }
}
