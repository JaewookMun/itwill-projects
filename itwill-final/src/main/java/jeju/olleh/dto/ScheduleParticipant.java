package jeju.olleh.dto;

/*
이름               널?       유형        
---------------- -------- --------- 
SCHEDULE_KEY              NUMBER    - FK : schedule(schedule_no)
PARTICIPANT_CODE          NUMBER    - FK : member(no)
PARTICIPANT_NO   NOT NULL NUMBER(1)
APPLY_DATE       NOT NULL DATE      
 
 */
public class ScheduleParticipant {
	private int scheduleKey;
	private int participantCode;
	private int participantNo;
	private String applyDate;
	
	public ScheduleParticipant() {
		// TODO Auto-generated constructor stub
	}

	public int getScheduleKey() {
		return scheduleKey;
	}

	public void setScheduleKey(int scheduleKey) {
		this.scheduleKey = scheduleKey;
	}

	public int getParticipantCode() {
		return participantCode;
	}

	public void setParticipantCode(int participantCode) {
		this.participantCode = participantCode;
	}

	public int getParticipantNo() {
		return participantNo;
	}

	public void setParticipantNo(int participantNo) {
		this.participantNo = participantNo;
	}

	public String getApplyDate() {
		return applyDate;
	}

	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}
	
}
