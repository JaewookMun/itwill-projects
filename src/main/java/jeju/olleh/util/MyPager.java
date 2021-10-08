package jeju.olleh.util;

import jeju.olleh.dto.BoardPage;

public class MyPager {
	// board - 게시글
	// page - 게시글들이 모인 페이지
	// block - 하단의 여러페이지들이 모인번호

	private int pageNo;
	private int totalBoard;
	private int pageSize;
	private int blockSize;

	private int totalPage;
	private int startRow;
	private int endRow;
	private int startPage;
	private int endPage;
	private int prevPage;
	private int nextPage;
	
	private String searchText;

	private MyPager() {
		super();
	}
	
	public static MyPager createPager(BoardPage boardPage, int totalBoard) {
		MyPager pager = new MyPager();
		pager.calcBoardPage(boardPage);
		pager.setTotalBoard(totalBoard);
		pager.calcPage();
		return pager;
	}

	private void calcBoardPage(BoardPage boardPage) {
		setPageNo(boardPage.getPageNo());
		setPageSize(boardPage.getPageSize());
		setBlockSize(boardPage.getBlockSize());
		setSearchText(boardPage.getSearchText());

		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		System.out.println("boardPage " + boardPage.getSearchText());
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~");
	}

	private void calcPage() {
		totalPage = (int) Math.ceil((double) totalBoard / pageSize);
		if (pageNo <= 0) {
			pageNo = 1;
		}
		if ( pageNo > totalPage) {
			pageNo = totalPage;
		}

		startRow = (pageNo - 1) * pageSize + 1;
		endRow = pageNo * pageSize;
		if (endRow > totalBoard) {
			endRow = totalBoard;
		}

		startPage = (pageNo - 1) / blockSize * blockSize + 1;
		endPage = startPage + blockSize - 1;
		if (endPage > totalPage) {
			endPage = totalPage;
		}

		prevPage = startPage - 1;
		nextPage = startPage + blockSize;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getTotalBoard() {
		return totalBoard;
	}

	public void setTotalBoard(int totalBoard) {
		this.totalBoard = totalBoard;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}

	public int getBlockSize() {
		return blockSize;
	}

	public void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getStartRow() {
		return startRow;
	}

	public void setStartRow(int startRow) {
		this.startRow = startRow;
	}

	public int getEndRow() {
		return endRow;
	}

	public void setEndRow(int endRow) {
		this.endRow = endRow;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getPrevPage() {
		return prevPage;
	}

	public void setPrevPage(int prevPage) {
		this.prevPage = prevPage;
	}

	public int getNextPage() {
		return nextPage;
	}

	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {
		this.searchText = searchText;
	}
	
}
