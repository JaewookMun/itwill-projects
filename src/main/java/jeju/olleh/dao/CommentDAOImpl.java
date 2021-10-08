package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jeju.olleh.dto.Comment;
import jeju.olleh.dto.CommentForm;
import jeju.olleh.mapper.BoardMapper;
import jeju.olleh.mapper.CommentMapper;

@Repository
public class CommentDAOImpl implements CommentDAO{
	
	@Autowired
    private SqlSession sqlSession;

	@Override
	public int insertComment(Comment comment) {
		return sqlSession.getMapper(CommentMapper.class).insertComment(comment);
	}

	@Override
	public int updateComment(CommentForm commentForm) {
		return sqlSession.getMapper(CommentMapper.class).updateComment(commentForm);
	}

	@Override
	public int deleteComment(int commentNo) {
		return sqlSession.getMapper(CommentMapper.class).deleteComment(commentNo);
	}

	@Override
	public int getCommentCount(int commentNo) {
		return sqlSession.getMapper(CommentMapper.class).getCommentCount(commentNo);
	}

	@Override
	public List<CommentForm> getCommentList(int boardNo) {
		return sqlSession.getMapper(CommentMapper.class).getCommentList(boardNo);
	}

}
