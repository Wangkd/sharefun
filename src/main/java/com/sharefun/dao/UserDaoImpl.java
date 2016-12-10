package com.sharefun.dao;

import com.sharefun.model.User;

import java.util.List;
import javax.sql.DataSource;

import com.sharefun.model.UserMapper;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 * Created by pengyang on 2016/12/4.
 */
public class UserDaoImpl implements UserDao {
    private DataSource dataSource;
    private JdbcTemplate jdbcTemplateObject;

    public void setDataSource(DataSource dataSource) {
        this.dataSource = dataSource;
        this.jdbcTemplateObject = new JdbcTemplate(dataSource);
    }

    @Override
    public boolean checkUser(String emailAddress, String passWord) {
        String SQL = "select * from user where emailAddress = ?";
        try {
            User user = jdbcTemplateObject.queryForObject(SQL, new Object[]{emailAddress}, new UserMapper());
            String psw = user.getPassWord();
            return passWord.equals(psw);
        }
        catch (EmptyResultDataAccessException e){
            return false;
        }
    }


//    public boolean checkEmailAddress(String emailAddress, String passWord) {
//        String SQL = "select * from user where emailAddress = ?";
//        User user = jdbcTemplateObject.queryForObject(SQL, new Object[]{emailAddress}, new UserMapper());
//        String psw_valid = user.getPassWord();
//        return passWord.equals(psw_valid);
//    }


    @Override
    public boolean checkEmailAddress(String userName, String emailAddress, String passWord) {
        String SQL = "select * from user where emailAddress = ?";
        try{
            User user = jdbcTemplateObject.queryForObject(SQL, new Object[]{emailAddress}, new UserMapper());
            return true;
        }catch(EmptyResultDataAccessException e){
            return false;
        }
    }

    @Override
    public void insertUser(String userName, String emailAddress, String passWord) {
        String SQL = "insert into user" +
                     "(username, emailaddress, password)"+
                     "values"+
                     "(?,?,?)";
        jdbcTemplateObject.update(SQL,userName,emailAddress,passWord);
    }
}


