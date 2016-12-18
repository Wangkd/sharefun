package com.sharefun.dao;

import com.sharefun.model.*;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;

/**
 * Created by wangkd on 12/15/16.
 */
public class BlogDaoImpl implements BlogDao {
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplateObject;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplateObject = new JdbcTemplate(dataSource);
    }

    @Override
    public void addBlog(int userId, String title, String content) {
        String SQL = "insert into blog (user_fk, blog_title, blog_content) values (?, ?, ?)";
        jdbcTemplateObject.update(SQL,userId,title,content);
    }

    @Override
    public void deleteBlog(int blogId) {
        String SQL = "delete from blog where blog_id = ?";
        jdbcTemplateObject.update(SQL,blogId);
    }

    @Override
    public void updateBlog(int blogId, String title, String content) {
        String SQL = "update blog set blog_title = ?, blog_content = ? where blog_id = ?";
        jdbcTemplateObject.update(SQL,title,content, blogId);
    }

    @Override
    public Blog getBlog(int blogId) {
        String SQL = "select * from blog where blog_id = ?";
        Blog blog = jdbcTemplateObject.queryForObject(SQL, new Object[]{blogId}, new BlogMapper());
        return blog;
    }

    @Override
    public List<Blog> getBlogs(int num) {
        String SQL = "select * from blog limit ?";
        List <Blog> blogs = jdbcTemplateObject.query(SQL, new Object[]{num}, new BlogMapper());
        return blogs;
    }

    @Override
    public List<Blog> getBlogsOfTag(int tagId) {
        String SQL = "select b.* from blog b join blog_tag bt on b.blog_id = bt.blog_id where bt.tag_id = ?";
        List<Blog> blogs = jdbcTemplateObject.query(SQL, new Object[]{tagId}, new BlogMapper());
        return blogs;
    }

    @Override
    public List<Blog> getBlogsOfAuthor(int userId) {
        String SQL = "select * from blog where user_fk = ?";
        List<Blog> blogs = jdbcTemplateObject.query(SQL, new Object[]{userId}, new BlogMapper());
        return blogs;
    }

    @Override
    public List<Blog> getStaredBlogsOfUser(int userId) {
        String SQL = "select b.* from blog b join user_blog_star ub on b.blog_id = ub.blog_id where ub.user_id = ?";
        List<Blog> blogs = jdbcTemplateObject.query(SQL, new Object[]{userId}, new BlogMapper());
        return blogs;
    }
}
