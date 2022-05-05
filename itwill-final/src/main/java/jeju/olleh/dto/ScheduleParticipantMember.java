package jeju.olleh.dto;

public class ScheduleParticipantMember {
	private ScheduleParticipant participant;
	private Member member;
	
	public ScheduleParticipantMember() {
		// TODO Auto-generated constructor stub
	}

	public ScheduleParticipant getParticipant() {
		return participant;
	}

	public void setParticipant(ScheduleParticipant participant) {
		this.participant = participant;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
	
}
