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
    public User getUser(int userId) {
        String SQL = "select * from user where user_id = ?";
        User user = jdbcTemplateObject.queryForObject(SQL,
                new Object[]{userId}, new UserMapper());
        return user;
    }

    @Override
    public User getUserByEmail(String email) {
        String SQL = "select * from user where emailaddress = ?";
        User user = jdbcTemplateObject.queryForObject(SQL,
                new Object[]{email}, new UserMapper());
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
    public User getCreaterOfTag(int tagid) {
        String SQL = "select u.* from user u join tag t on u.user_id = t.creater_id where t.tag_id = ?";
        User creater = jdbcTemplateObject.queryForObject(SQL, new Object[]{tagid}, new UserMapper());
        return creater;
    }

    @Override
    public List<User> getUsersOfStaredBlog(int blogId) {
        String SQL = "select u.* from user u join user_blog_star ub on u.user_id = ub.user_id where ub.blog_id = ?";
        List<User> users = jdbcTemplateObject.query(SQL, new Object[]{blogId}, new UserMapper());
        return users;
    }

    @Override
    public List<User> getUsersFollowingTag(int tagId) {
        String SQL = "select u.* from user u join user_tag_sub uts on u.user_id = uts.user_id where uts.tag_id = ?";
        List<User> userList = jdbcTemplateObject.query(SQL, new Object[]{tagId}, new UserMapper());
        return userList;
    }

    @Override
    public List<User> getUsersFollowedByUser(int userId) {
        String SQL = "select u.* from user u join user_user_follow uuf on u.user_id = uuf.user2_id where uuf.user1_id = ?";
        List<User> users = jdbcTemplateObject.query(SQL, new Object[]{userId}, new UserMapper());
        return users;
    }

    @Override
    public List<User> getUsersFollowingUser(int userId) {
        String SQL = "select u.* from user u join user_user_follow uuf on u.user_id = uuf.user1_id where uuf.user2_id = ?";
        List<User> users = jdbcTemplateObject.query(SQL, new Object[]{userId}, new UserMapper());
        return users;
    }
}


