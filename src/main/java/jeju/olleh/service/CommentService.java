package jeju.olleh.service;

import jeju.olleh.dto.Comment;
import jeju.olleh.dto.CommentForm;

public interface CommentService {
	int writeComment(CommentForm commentform);

}
