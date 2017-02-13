package com.sharefun.model;
import org.springframework.jdbc.core.RowMapper;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by wangkd on 1/2/17.
 */
public class BlogCommentMapper implements RowMapper<BlogComment> {
    public BlogComment mapRow(ResultSet rs, int rowNum) throws SQLException {
        BlogComment blogComment = new BlogComment();
        blogComment.setCommentId(rs.getInt("bc_id"));
        blogComment.setUserId(rs.getInt("user_id"));
        blogComment.setBlogId(rs.getInt("blog_id"));
        blogComment.setNumOfLikes(rs.getInt("num_of_likes"));
        blogComment.setParentCommentId(rs.getInt("parent_comment_id"));
        return blogComment;
    }
}
