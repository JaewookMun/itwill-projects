package jeju.olleh.dto;

public class ParticipantMemberWithSchedule {
	Schedule schedule;
	ScheduleParticipant participant;
	Member member;
	
	public ParticipantMemberWithSchedule() {
		// TODO Auto-generated constructor stub
	}

	public Schedule getSchedule() {
		return schedule;
	}

	public void setSchedule(Schedule schedule) {
		this.schedule = schedule;
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
