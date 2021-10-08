package jeju.olleh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jeju.olleh.dao.CommentDAO;
import jeju.olleh.dto.Comment;
import jeju.olleh.dto.CommentForm;

@Service
public class CommentServiceImpl implements CommentService {

	@Autowired
	private CommentDAO commentDAO;
	
	@Override
	@Transactional
	public int writeComment(CommentForm commentform) {		
		Comment comment = Comment.createBoardFromBoardForm(commentform);
		return commentDAO.insertComment(comment);
	}

}
