package jeju.olleh.mapper;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Comment;
import jeju.olleh.dto.CommentForm;

public interface CommentMapper {

    int insertComment(Comment board);
    int updateComment(CommentForm board);
    int deleteComment(int boardNo);
    int getCommentCount(int boardNo);
    
    List<CommentForm> getCommentList(int boardNo);
}
