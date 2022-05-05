package jeju.olleh.dto;

import java.util.List;

import jeju.olleh.util.MyPager;

public class BoardsPager {
	
	List<BoardForm> boardList;
	MyPager myPager;
	
	private BoardsPager() {
		super();
	}

	public static BoardsPager createBoardsPager(List<BoardForm> boardList, MyPager myPager) {
		BoardsPager boardsPager = new BoardsPager();
		boardsPager.setBoardList(boardList);
		boardsPager.setMyPager(myPager);
		return boardsPager;
	}
	
	public List<BoardForm> getBoardList() {
		return boardList;
	}
	public void setBoardList(List<BoardForm> boardList) {
		this.boardList = boardList;
	}
	public MyPager getMyPager() {
		return myPager;
	}
	public void setMyPager(MyPager myPager) {
		this.myPager = myPager;
	}
	
}
