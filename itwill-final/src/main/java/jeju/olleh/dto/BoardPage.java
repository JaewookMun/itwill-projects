package jeju.olleh.dto;

public class BoardPage {
	
	final int defaultCategory = 1;
	final int defaultPageNo = 1;
	final int defaultPageSize = 8;
	final int defaultBlockSize = 5;
	final String deflaultSearchText = "";
	
	private int category;
	private int pageNo;
	private int pageSize;
	private int blockSize;
	private String searchText;
	
	public BoardPage() {
		super();
		setCategory(defaultCategory);
		setPageNo(defaultPageNo);
		setPageSize(defaultPageSize);
		setBlockSize(defaultBlockSize);
		setSearchText(deflaultSearchText);
	}

	public int getCategory() {
		return category;
	}

	public void setCategory(int category) {
		this.category = category;
	}

	public int getPageNo() {
		return pageNo;
	}

	public void setPageNo(int pageNo) {
		this.pageNo = pageNo;
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

	public String getSearchText() {
		return searchText;
	}

	public void setSearchText(String searchText) {

		this.searchText = searchText;
	}

}
