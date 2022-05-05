package jeju.olleh.dto;

import org.springframework.web.multipart.MultipartFile;

/*
 * TITLE   NOT NULL VARCHAR2(50)   
FINISH           VARCHAR2(100)  
CONTENT          VARCHAR2(1000) 
IMG              VARCHAR2(100)  
NUM              NUMBER(38)  
 * 
 * */
public class Honor {
	private String title;
	private String finish;
	private String content;
	private String origin;
	private int num;
	private String upload;
	private MultipartFile file;
	
	public Honor() {
		// TODO Auto-generated constructor stub
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getFinish() {
		return finish;
	}

	public void setFinish(String finish) {
		this.finish = finish;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getUpload() {
		return upload;
	}

	public void setUpload(String upload) {
		this.upload = upload;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}



	
}
