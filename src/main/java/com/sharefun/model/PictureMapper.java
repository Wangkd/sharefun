package com.sharefun.model;

import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by wangkd on 12/22/16.
 */
public class PictureMapper implements RowMapper<Picture> {
    public Picture mapRow(ResultSet rs, int rowNum) throws SQLException {
        Picture picture = new Picture();
        picture.setPicId(rs.getInt("pic_id"));
        picture.setPicTitle(rs.getString("pic_title"));
        picture.setPicPath(rs.getString("pic_path"));
        return picture;
    }
}
