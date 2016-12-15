package com.sharefun.model;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by wangkd on 12/15/16.
 */
public class BlogMapper implements RowMapper<Blog> {
    public Blog mapRow(ResultSet rs, int rowNum) throws SQLException {
        Blog blog = new Blog();
        blog.setBlogTitle(rs.getString("blog_title"));
        blog.setBlogContent(rs.getString("blog_content"));
        return blog;
    }
}