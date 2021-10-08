package jeju.olleh.service;

import jeju.olleh.dao.BoardDAO;
import jeju.olleh.dao.CommentDAO;
import jeju.olleh.dao.FileBoardDAO;
import jeju.olleh.dto.Board;
import jeju.olleh.dto.BoardForm;
import jeju.olleh.dto.BoardPage;
import jeju.olleh.dto.BoardsPager;
import jeju.olleh.dto.CommentForm;
import jeju.olleh.dto.FileBoard;
import jeju.olleh.util.MyPager;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.context.WebApplicationContext;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDAO boardDAO;
	@Autowired
	private CommentDAO commentDAO;
	@Autowired
	private FileBoardDAO fileBoardDAO;
	@Autowired
	private WebApplicationContext context;

	@Override
	@Transactional
	public int writeBoard(BoardForm boardForm) throws IllegalStateException, IOException {
		
		System.out.println("~~~~~~~~~~~~~~~~~~~~1");
		System.out.println(boardForm);
		
		Board board = Board.createBoardFromBoardForm(boardForm);
		boardDAO.insertBoard(board);
		boardForm.setNo(board.getNo());
		
		FileBoard fileBoard = FileBoard.createFileBoard(boardForm);
		if(fileBoard.SettingProperty(context, "/resources/upload/boards")) {
			fileBoardDAO.insertFileBoard(fileBoard);
			System.out.println("~~~~~~~~~~~~~~~~~~~~2");
			System.out.println(fileBoard);
		}

		System.out.println("~~~~~~~~~~~~~~~~~~~~3");
		System.out.println(boardForm);

		System.out.println("BoardService " + board.getNo() + "번 완료");
		return board.getNo();
	}

	@Override
	@Transactional
	public void modifyBoard(int no, BoardForm boardForm) {
		boardForm.setNo(no);
		boardDAO.updateBoard(boardForm);
		
		//파일업로드 수정은 어떻게 할까
		//fileBoardDAO.updateFileBoard(boardForm.getFileBoard());
	}

	@Override
	@Transactional
	public void deleteBoard(int no) {
		boardDAO.deleteBoard(no);
		fileBoardDAO.deleteFileBoard(no);
	}

	@Override
	@Transactional(readOnly = true)
	public int getBoardsCount(int category) {
		return boardDAO.getBoardCount(category);
	}
	
	@Override
	@Transactional(readOnly = true)
	public int getBoardsCount(BoardPage boardPage) {
		return boardDAO.getBoardCount(boardPage);
	}

	@Override
	@Transactional(readOnly = true)
	public Board getBoard(int no) {
		return null;
	}

	@Override
	@Transactional(readOnly = true)
	public BoardForm getBoardForm(int no) {
		BoardForm boardForm = boardDAO.selectBoard(no);
		
		//FileBoard fileBoard = fileBoardDAO.selectFileBoardByBoardNo(no);
		//boardForm.setFileBoard(fileBoard); 
		
		return boardForm;
	}
	
	@Override
	@Transactional(readOnly = true)
	public FileBoard getFileBoardByBoardNo(int boardNo) {
		FileBoard fileBoard = fileBoardDAO.selectFileBoardByBoardNo(boardNo);
		return fileBoard;
	}
	
	@Override
	@Transactional(readOnly = true)
	public FileBoard getFileBoard(int fileNo) {
		FileBoard fileBoard = fileBoardDAO.selectFileBoard(fileNo);

		return fileBoard;
	}

	@Override
	@Transactional(readOnly = true)
	public List<CommentForm> getCommentsList(int boardNo) {
		return commentDAO.getCommentList(boardNo);
	}

	@Override
	@Transactional(readOnly = true)
	public List<BoardForm> getBoardList(int category) {
		return boardDAO.selectBoardList(category);
	}

	@Override
	@Transactional(readOnly = true)
	public List<BoardForm> getBoardNoticeList() {
		return boardDAO.selectBoardNoticeList();
	}

	@Override
	@Transactional(readOnly = true)
	public BoardsPager getBoardList2(BoardPage boardPage) {
		
		MyPager myPager = MyPager.createPager(boardPage, getBoardsCount(boardPage));
	
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("category", boardPage.getCategory());
		pagerMap.put("startRow", myPager.getStartRow());
		pagerMap.put("endRow", myPager.getEndRow());
		pagerMap.put("searchText", myPager.getSearchText());
		
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		System.out.println("searchText " + pagerMap.get("searchText").toString());
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~");

		return BoardsPager.createBoardsPager(boardDAO.getBoradList(pagerMap), myPager);
	}
}
