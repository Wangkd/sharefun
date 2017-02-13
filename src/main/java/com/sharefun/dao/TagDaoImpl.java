package com.sharefun.dao;
import com.sharefun.model.Blog;
import com.sharefun.model.BlogTag;
import java.util.List;
import java.util.Scanner;

import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import com.sharefun.model.BlogTagMapper;
import javax.sql.DataSource;
/**
 * Created by wangkd on 12/18/16.
 */
public class TagDaoImpl implements TagDao{
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplateObject;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplateObject = new JdbcTemplate(dataSource);
    }

    @Override
    public void addTag(String title) {
        String SQL = "insert into tag (tag_title) values (?)";
        jdbcTemplateObject.update(SQL, title);
    }

    @Override
    public void tagSubbedByUser(int tagId, int userId) {
        String SQL = "insert into user_tag_sub (tag_id, user_id) values(?, ?)";
        jdbcTemplateObject.update(SQL, tagId, userId);
    }

    @Override
    public void tagUnSubbedByUser(int tagId, int userId) {
        String SQL = "delete from user_tag_sub where tag_id = ? and user_id = ?";
        jdbcTemplateObject.update(SQL, tagId, userId);
    }

    @Override
    public boolean isTagSubbedByUser(int tagId, int userId) {
        String SQL = "select count(*) from user_tag_sub where tag_id = ? and user_id = ?";
        Integer count = jdbcTemplateObject.queryForObject(SQL, Integer.class, tagId, userId);
        return count != null && count > 0;
    }

    @Override
    public BlogTag getTag(int tagId) {
        String SQL = "select * from tag where tag_id = ?";
        BlogTag blogTag = jdbcTemplateObject.queryForObject(SQL, new Object[]{tagId}, new BlogTagMapper());
        return blogTag;
    }

    @Override
    public List<BlogTag> getTags(int num) {
        String SQL = "select * from tag limit ?";
        List <BlogTag> blogTags = jdbcTemplateObject.query(SQL, new Object[]{num}, new BlogTagMapper());
        return blogTags;
    }

    @Override
    public List<BlogTag> getTagsOfBlog(int blogId) {
        String SQL = "select t.* from tag t join blog_tag bt on t.tag_id = bt.tag_id where bt.blog_id = ?";
        List<BlogTag> blogTags = jdbcTemplateObject.query(SQL, new Object[]{blogId}, new BlogTagMapper());
        return blogTags;
    }

    @Override
    public List<BlogTag> getTagsOfUser(int userId) {
        String SQL = "select t.* from tag t join user_tag_sub uts on t.tag_id = uts.tag_id where uts.user_id = ?";
        List<BlogTag> blogTags = jdbcTemplateObject.query(SQL, new Object[]{userId}, new BlogTagMapper());
        return blogTags;
    }
}
