package jeju.olleh.dto;

public class ScheduleCommentMember {
	private ScheduleComment comment;
	private Member member;
	
	public ScheduleCommentMember() {
		// TODO Auto-generated constructor stub
	}

	public ScheduleComment getComment() {
		return comment;
	}

	public void setComment(ScheduleComment comment) {
		this.comment = comment;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
	
}
