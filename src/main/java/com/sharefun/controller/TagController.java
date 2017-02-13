package com.sharefun.controller;

import com.sharefun.dao.BlogCommentDao;
import com.sharefun.dao.BlogDao;
import com.sharefun.dao.TagDao;
import com.sharefun.dao.UserDao;
import com.sharefun.model.Blog;
import com.sharefun.model.BlogTag;
import com.sharefun.model.User;
import com.sun.org.apache.regexp.internal.RE;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by wangkd on 12/30/16.
 */
@Controller
public class TagController {
    private TagDao tagDao;
    private UserDao userDao;
    private BlogDao blogDao;
    private BlogCommentDao blogCommentDao;

    public void setTagDao(TagDao tagDao) {
        this.tagDao = tagDao;
    }
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }
    public void setBlogDao(BlogDao blogDao) {
        this.blogDao = blogDao;
    }

    public void setBlogCommentDao(BlogCommentDao blogCommentDao) {
        this.blogCommentDao = blogCommentDao;
    }

    @RequestMapping(value = "/tag", method = RequestMethod.GET)
    public String tagInfo(@RequestParam("tag_id") int tagId, HttpServletRequest request){
        BlogTag tag = tagDao.getTag(tagId);
        User creater = userDao.getCreaterOfTag(tagId);
        List<Blog> blogList = blogDao.getBlogsOfTag(tagId);
        List<User> usersFollowtheTag = userDao.getUsersFollowingTag(tagId);
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
        request.setAttribute("tag", tag);
        request.setAttribute("blogList", blogList);
        request.setAttribute("userList", userList);
        request.setAttribute("creater", creater);
        request.setAttribute("usersFollowtheTag", usersFollowtheTag);
        request.setAttribute("numOfComments", numOfComments);
        request.setAttribute("numOfStarsList", numOfStarsList);

        //check whether a user has logged in or not -------------------------------
        boolean hasUser = false;
        if(request.getSession().getAttribute("user") != null) {
            hasUser = true;
            User user = (User) request.getSession().getAttribute("user");
            boolean isTagSubbed = tagDao.isTagSubbedByUser(tagId, user.getUserId());
            request.setAttribute("isTagSubbed", isTagSubbed);
        }
        request.setAttribute("hasUser", hasUser);
        return "taginfo";
    }

    @RequestMapping(value = "/follow", method = RequestMethod.GET)
    public String followTag(@RequestParam("tag_id") int tagId, @SessionAttribute("user") User user, HttpServletRequest request){
        tagDao.tagSubbedByUser(tagId,user.getUserId());
        request.setAttribute("tag_id", tagId);
        return "redirect: /tag?tag_id=" + tagId;
    }

    @RequestMapping(value = "/unfollow", method = RequestMethod.GET)
    public String unFollowTag(@RequestParam("tag_id") int tagId, @SessionAttribute("user") User user, HttpServletRequest request){
        tagDao.tagUnSubbedByUser(tagId, user.getUserId());
        return "redirect: /tag?tag_id=" + tagId;
    }
}
