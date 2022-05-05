package jeju.olleh.dto;

/*
이름              널?       유형            
--------------- -------- ------------- 
SCHEDULE_KEY             NUMBER         - FK : schedule(schedule_no)
COMMENT_NO      NOT NULL NUMBER         
COMMENT_CODE             NUMBER        - FK : member(no)
COMMENT_CONTENT          VARCHAR2(500) 
COMMENT_DATE    NOT NULL DATE          
REF_NO          NOT NULL NUMBER        
RE_LEVEL        NOT NULL NUMBER(1)  
 */
public class ScheduleComment {
	private int scheduleKey;
	private int commentNo;
	private int commentCode;
	private String commentContent;
	private String commentDate;
	private int refNo;
	private int reLevel;
	
	public ScheduleComment() {
		// TODO Auto-generated constructor stub
	}

	public int getScheduleKey() {
		return scheduleKey;
	}

	public void setScheduleKey(int scheduleKey) {
		this.scheduleKey = scheduleKey;
	}

	public int getCommentNo() {
		return commentNo;
	}

	public void setCommentNo(int commentNo) {
		this.commentNo = commentNo;
	}

	public int getCommentCode() {
		return commentCode;
	}

	public void setCommentCode(int commentCode) {
		this.commentCode = commentCode;
	}

	public String getCommentContent() {
		return commentContent;
	}

	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	public int getRefNo() {
		return refNo;
	}

	public void setRefNo(int refNo) {
		this.refNo = refNo;
	}

	public int getReLevel() {
		return reLevel;
	}

	public void setReLevel(int reLevel) {
		this.reLevel = reLevel;
	}
	
}
