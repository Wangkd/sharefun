package com.sharefun.dao;

import com.sharefun.model.User;
import java.util.List;
import javax.sql.DataSource;

import com.sharefun.model.UserMapper;
import org.springframework.jdbc.core.JdbcTemplate;
/**
 * Created by pengyang on 2016/12/4.
 */
public class UserDaoImpl implements UserDao {
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplateObject;
    public void setDataSource(DataSource dataSource){
        this.dataSource = dataSource;
        this.jdbcTemplateObject = new JdbcTemplate(dataSource);
    }

    @Override
    public void register(String name, String passWord, String emailAddress) {
        return;
    }

    @Override
    public boolean checkUser() {
        return false;
    }

    @Override
    public boolean signin(String emailAddress, String passWord) {
        String SQL = "select * from user where emailAddress = ?";
        User user = jdbcTemplateObject.queryForObject(SQL, new Object[]{emailAddress}, new UserMapper());
        String psw_valid = user.getPassWord();
        return passWord.equals(psw_valid);
    }
}
