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
        blog.setBlogId(rs.getInt("blog_id"));
        blog.setBlogTitle(rs.getString("blog_title"));
        blog.setBlogAbstract(rs.getString("blog_abstract"));
        blog.setBlogContent(rs.getString("blog_content"));
        blog.setAuthorId(rs.getInt("user_fk"));
        blog.setCreatedDate(rs.getDate("created_date"));
        blog.setUpdatedDate(rs.getDate("updated_date"));
        blog.setPageClick(rs.getInt("article_click"));
        return blog;
    }
}