package com.sharefun.dao;

import com.sharefun.model.Blog;
import com.sharefun.model.BlogMapper;

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
    public List<Blog> getBlogs(int num) {
        String SQL = "select * from blog limit ?";
        List <Blog> blogs = jdbcTemplateObject.query(SQL, new Object[]{num}, new BlogMapper());
        return blogs;
    }
}
