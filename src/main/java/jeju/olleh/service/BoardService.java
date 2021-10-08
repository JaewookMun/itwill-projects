package jeju.olleh.service;


import java.io.IOException;
import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Board;
import jeju.olleh.dto.BoardForm;
import jeju.olleh.dto.BoardPage;
import jeju.olleh.dto.BoardsPager;
import jeju.olleh.dto.CommentForm;
import jeju.olleh.dto.FileBoard;

public interface BoardService {
	
	int writeBoard(BoardForm boardForm) throws IllegalStateException, IOException ;
	void modifyBoard(int no, BoardForm boardForm);
	void deleteBoard(int no);
	
	int getBoardsCount(int category);
	int getBoardsCount(BoardPage boardPage);
	
	Board getBoard(int no);
	BoardForm getBoardForm(int no);

	FileBoard getFileBoardByBoardNo(int boardNo);
	FileBoard getFileBoard(int fileNo);
	
	List<CommentForm> getCommentsList(int boardNo); 
	
	List<BoardForm> getBoardList(int category);
	List<BoardForm> getBoardNoticeList();

	BoardsPager getBoardList2(BoardPage boardPage);
}
