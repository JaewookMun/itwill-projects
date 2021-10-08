package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Comment;
import jeju.olleh.dto.CommentForm;


public interface CommentDAO {

    int insertComment(Comment comment);
    int updateComment(CommentForm commentForm);
    int deleteComment(int commentNo);
    int getCommentCount(int commentNo);
    
    List<CommentForm> getCommentList(int boardNo);
}
