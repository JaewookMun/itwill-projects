package jeju.olleh.dto;



public class Board {
	
	private int no;
	private int member_no;
	private String title;
	private String content;
	private String register_date;
	private String modify_date;
	private String register_ip;
	private int view_num;
	private int recommend_num;
	private int category;
	private int status;
	private String period;
	
	
	public static Board createBoardFromBoardForm(BoardForm boardForm) {
		Board board = new Board();
		board.setFromBoardForm(boardForm);
		return board;
	}
	
	public void setFromBoardForm(BoardForm boardForm) {

		setMember_no(boardForm.getMemberNo());
		setTitle(boardForm.getTitle());
		setContent(boardForm.getContent());
		setCategory(boardForm.getCategory());
		this.status = boardForm.getStatus();

	}
	
	
	public Board() {
		super();
		
		this.no = 0;
		this.member_no = 0;
		this.title = "0";
		this.content = "0";
		this.register_date = "0";
		this.modify_date = "0";
		this.register_ip = "0";
		this.view_num = 0;
		this.recommend_num = 0;
		this.category = 1;
		this.status = 1;
		this.period = "0";
	}


	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegister_date() {
		return register_date;
	}
	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}
	public String getModify_date() {
		return modify_date;
	}
	public void setModify_date(String modify_date) {
		this.modify_date = modify_date;
	}
	public String getRegister_ip() {
		return register_ip;
	}
	public void setRegister_ip(String register_ip) {
		this.register_ip = register_ip;
	}
	public int getView_num() {
		return view_num;
	}
	public void setView_num(int view_num) {
		this.view_num = view_num;
	}
	public int getRecommend_num() {
		return recommend_num;
	}
	public void setRecommend_num(int recommend_num) {
		this.recommend_num = recommend_num;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getPeriod() {
		return period;
	}
	public void setPeriod(String period) {
		this.period = period;
	}
}
