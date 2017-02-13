package com.sharefun.dao;

import com.sharefun.model.BlogComment;
import com.sharefun.model.BlogCommentMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

/**
 * Created by wangkd on 1/2/17.
 */
public class BlogCommentDaoImpl implements BlogCommentDao {
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplateObject;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplateObject = new JdbcTemplate(dataSource);
    }

    @Override
    public List<BlogComment> getCommentsOfBlog(int blogId) {
        String SQL = "select * from blog_comment  where blog_id = ?";
        List<BlogComment> blogCommentList = jdbcTemplateObject.query(SQL, new Object[]{blogId}, new BlogCommentMapper());
        return blogCommentList;
    }
}
