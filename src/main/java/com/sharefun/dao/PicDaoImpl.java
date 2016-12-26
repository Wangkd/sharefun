package com.sharefun.dao;

import com.sharefun.model.Picture;
import com.sharefun.model.PictureMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;

/**
 * Created by wangkd on 12/22/16.
 */
public class PicDaoImpl implements PicDao {
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplateObject;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplateObject = new JdbcTemplate(dataSource);
    }
    @Override
    public void addPicture(String picTitle, String picPath, int blogId) {
        String SQL = "insert into picture (pic_title, pic_path, blog_id) values (?, ?, ?)";
        jdbcTemplateObject.update(SQL,picTitle, picPath, blogId);
    }

    @Override
    public void deletePicture(int id) {

    }

    @Override
    public void updatePicture(String picTitle, String picPath) {

    }

    @Override
    public List<Picture> getPicturesOfBlog(int blogId) {
        String SQL = "select p.* from blog b join picture p on p.blog_id = b.blog_id where b.blog_id = ?";
        List<Picture> pictures = jdbcTemplateObject.query(SQL, new Object[]{blogId}, new PictureMapper());
        return pictures;
    }
}
