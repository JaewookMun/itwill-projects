package jeju.olleh.dto;

/*
이름               널?       유형     
------------------ -------- -------------- 
SCHEDULE_NO        NOT NULL NUMBER           - PK
SCHEDULE_TYPE               NUMBER(1)        - FK : Program(programType)
SCHEDULE_POST_DATE NOT NULL DATE           
SCHEDULE_TITLE     NOT NULL VARCHAR2(500)  
SCHEDULE_COURSE             VARCHAR2(10)   
DEPARTURE_DATETIME          DATE           
DEPARTURE_LOCATION          VARCHAR2(100)  
VOLUNTEER                   VARCHAR2(20)   
PREPARATION                 VARCHAR2(30)   
SCHEDULE_CONTENT            VARCHAR2(4000) 
STATUS             NOT NULL NUMBER(1)  
 */

public class Schedule {
	private int scheduleNo;
	private int scheduleType;
	private String schedulePostDate;
	private String scheduleTitle;
	private String scheduleCourse;
	private String departureDatetime;
	private String departureLocation;
	private String volunteer;
	private String preparation;
	private String scheduleContent;
	private int status;
	
	public Schedule() {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return getScheduleNo()+", "+getScheduleType()+", "+getSchedulePostDate()
			+", "+getScheduleTitle()+", "+getScheduleCourse()+", "+getDepartureDatetime()
			+", "+getDepartureLocation()+", "+getVolunteer()+", ["+getPreparation()
			+"], "+getScheduleContent()+", "+getStatus();
	}
	
	public int getScheduleNo() {
		return scheduleNo;
	}

	public void setScheduleNo(int scheduleNo) {
		this.scheduleNo = scheduleNo;
	}

	public int getScheduleType() {
		return scheduleType;
	}

	public void setScheduleType(int scheduleType) {
		this.scheduleType = scheduleType;
	}

	public String getSchedulePostDate() {
		return schedulePostDate;
	}

	public void setSchedulePostDate(String schedulePostDate) {
		this.schedulePostDate = schedulePostDate;
	}

	public String getScheduleTitle() {
		return scheduleTitle;
	}

	public void setScheduleTitle(String scheduleTitle) {
		this.scheduleTitle = scheduleTitle;
	}

	public String getScheduleCourse() {
		return scheduleCourse;
	}

	public void setScheduleCourse(String scheduleCourse) {
		this.scheduleCourse = scheduleCourse;
	}

	public String getDepartureDatetime() {
		return departureDatetime;
	}

	public void setDepartureDatetime(String departureDatetime) {
		this.departureDatetime = departureDatetime;
	}

	public String getDepartureLocation() {
		return departureLocation;
	}

	public void setDepartureLocation(String departureLocation) {
		this.departureLocation = departureLocation;
	}

	public String getVolunteer() {
		return volunteer;
	}

	public void setVolunteer(String volunteer) {
		this.volunteer = volunteer;
	}

	public String getPreparation() {
		return preparation;
	}

	public void setPreparation(String preparation) {
		this.preparation = preparation;
	}

	public String getScheduleContent() {
		return scheduleContent;
	}

	public void setScheduleContent(String scheduleContent) {
		this.scheduleContent = scheduleContent;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}
	
}
