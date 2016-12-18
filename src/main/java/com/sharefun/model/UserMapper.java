package com.sharefun.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
/**
 * Created by pengyang on 2016/12/4.
 */
public class UserMapper implements RowMapper<User> {
    public User mapRow(ResultSet rs, int rowNum) throws SQLException {
        User user = new User();
        user.setUserId(rs.getInt("user_id"));
        user.setUserName(rs.getString("userName"));
        user.setEmailAddress(rs.getString("emailAddress"));
        user.setPassWord(rs.getString("passWord"));
        return user;
    }
}
