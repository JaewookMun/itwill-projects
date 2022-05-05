package jeju.olleh.exception;

public class ExistingParticipantException extends Exception {
	private static final long serialVersionUID = 1L;
	
	private int scheduleKey;
	
	public ExistingParticipantException() {
		// TODO Auto-generated constructor stub
	}

	public ExistingParticipantException(String message, int scheduleKey) {
		super(message);
		this.scheduleKey=scheduleKey;
	}

	public int getScheduleKey() {
		return scheduleKey;
	}

	public void setScheduleKey(int scheduleKey) {
		this.scheduleKey = scheduleKey;
	}
	
}
