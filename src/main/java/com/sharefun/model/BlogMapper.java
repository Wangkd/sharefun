package com.sharefun.model;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import com.sharefun.model.User;
/**
 * Created by wangkd on 12/15/16.
 */
public class BlogMapper implements RowMapper<Blog> {
    public Blog mapRow(ResultSet rs, int rowNum) throws SQLException {
        Blog blog = new Blog();
        blog.setBlogId(rs.getInt("blog_id"));
        blog.setBlogTitle(rs.getString("blog_title"));
        blog.setBlogContent(rs.getString("blog_content"));
        blog.setAuthor(rs.getInt("user_fk"));
        return blog;
    }
}