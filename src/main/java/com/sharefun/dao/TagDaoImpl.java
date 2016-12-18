package com.sharefun.dao;
import com.sharefun.model.Blog;
import com.sharefun.model.BlogTag;
import java.util.List;
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
}
