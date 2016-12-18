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
    public User getUser(String emailAddress) {
        String SQL = "select * from user where emailAddress = ?";
        User user = jdbcTemplateObject.queryForObject(SQL,
                new Object[]{emailAddress}, new UserMapper());
        return user;
    }

    @Override
    public void changeuserNameOrPassword(int userId, String userName, String passWord) {
        String SQL = "update user set username = ?, passowrd = ? where user_id = ?";
        jdbcTemplateObject.update(SQL,userName, passWord, userId);
    }

    @Override
    public User getAuthorOfBlog(int blogId) {
        String SQL = "select u.* from user u join blog b on u.user_id = b.user_fk where b.blog_id = ?";
        User author = jdbcTemplateObject.queryForObject(SQL, new Object[]{blogId}, new UserMapper());
        return author;
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

    @Override
    public List<User> getUsersOfStaredBlog(int blogId) {
        String SQL = "select u.* from user u join user_blog_star ub on u.user_id = ub.user_id where ub.blog_id = ?";
        List<User> users = jdbcTemplateObject.query(SQL, new Object[]{blogId}, new UserMapper());
        return users;
    }
}


