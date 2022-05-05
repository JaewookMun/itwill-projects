package jeju.olleh.dto;

import org.springframework.web.multipart.MultipartFile;

public class BoardForm {

    private int no;
    private String title;
    private int memberNo;
    private String userName;
    private String date;
    private String content;
    private int category;
    
    private int status;
    
    private MultipartFile file; 
    
    
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getMemberNo() {
		return memberNo;
	}
	public void setMemberNo(int memberNo) {
		this.memberNo = memberNo;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}

	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
	}

	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	
	
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	@Override
	public String toString() {
		return super.toString()
				+ ", no:" + no 
				+ ", title:" + title
				+ ", memberNo:" + memberNo
				+ ", userName:" + userName
				+ ", date:" + date
				+ ", content:" + content
				+ ", category:" + category;
	}    
	
	
}
