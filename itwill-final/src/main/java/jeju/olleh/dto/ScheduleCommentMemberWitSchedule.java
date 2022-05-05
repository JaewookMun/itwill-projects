package jeju.olleh.dto;

public class ScheduleCommentMemberWitSchedule {
	Schedule schedule;
	private ScheduleComment comment;
	private Member member;
	
	public ScheduleCommentMemberWitSchedule() {
		// TODO Auto-generated constructor stub
	}
	
	public Schedule getSchedule() {
		return schedule;
	}

	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
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
