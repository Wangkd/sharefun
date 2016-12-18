package com.sharefun.model;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by wangkd on 12/17/16.
 */
public class BlogTagMapper implements RowMapper<BlogTag> {
    public BlogTag mapRow(ResultSet rs, int rowNum) throws SQLException {
        BlogTag blogTag = new BlogTag();
        blogTag.setTagId(rs.getInt("tag_id"));
        blogTag.setTagTitle(rs.getString("tag_title"));
        return blogTag;
    }
}