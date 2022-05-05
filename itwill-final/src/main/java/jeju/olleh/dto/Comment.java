package jeju.olleh.dto;


public class Comment {
	
	private int no;
	private int board_no;
	private int member_no;
	private String register_date;
	private String content;
	private String register_ip;
	
	public static Comment createBoardFromBoardForm(CommentForm commentForm) {
		Comment comment = new Comment();
		comment.setFromCommentForm(commentForm);
		return comment;
	}
	
	public void setFromCommentForm(CommentForm commentForm) {

		setBoard_no(commentForm.getBoardNo());
		setMember_no(commentForm.getMemberNo());
		setContent(commentForm.getContent());
	}
	
	public Comment() {
		super();
		
		this.no = 0;
		this.board_no = 0;
		this.member_no = 0;
		this.register_date = "0";
		this.content = "0";
		this.register_ip = "0";
		
	}
	
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public int getBoard_no() {
		return board_no;
	}
	public void setBoard_no(int board_no) {
		this.board_no = board_no;
	}
	public int getMember_no() {
		return member_no;
	}
	public void setMember_no(int member_no) {
		this.member_no = member_no;
	}
	public String getRegister_date() {
		return register_date;
	}
	public void setRegister_date(String register_date) {
		this.register_date = register_date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getRegister_ip() {
		return register_ip;
	}
	public void setRegister_ip(String register_ip) {
		this.register_ip = register_ip;
	}

	
}
