package jeju.olleh.dto;
/*
create table festival(
no number primary key,
subject varchar2(30) not null,
main_img varchar2(100) not null,
slide_img varchar2(500) not null,
term varchar2(50) not null,
day1 varchar2(50),
day2 varchar2(50),
day3 varchar2(50),
day4 varchar2(50),
day5 varchar2(50),
spot varchar2(50) not null,
link number not null);
 
 
이름        널?       유형            
--------- -------- ------------- 
NO        NOT NULL NUMBER        
SUBJECT   NOT NULL VARCHAR2(30)  
MAIN_IMG  NOT NULL VARCHAR2(100) 
SLIDE_IMG NOT NULL VARCHAR2(500) 
TERM      NOT NULL VARCHAR2(50)  
DAY1               VARCHAR2(50)  
DAY2               VARCHAR2(50)  
DAY3               VARCHAR2(50)  
DAY4               VARCHAR2(50)  
DAY5               VARCHAR2(50)  
SPOT      NOT NULL VARCHAR2(50)  
LINK      NOT NULL NUMBER   
 
 create SEQUENCE festival_seq;
 
 */

public class Festival {
	private int no;
	private String subject;
	private String mainImg;
	private String slideImg;
	private String term;
	private String day1;
	private String day2;
	private String day3;
	private String day4;
	private String day5;
	private String spot;
	private int link;
	
	public Festival() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getMainImg() {
		return mainImg;
	}

	public void setMainImg(String mainImg) {
		this.mainImg = mainImg;
	}

	public String getSlideImg() {
		return slideImg;
	}

	public void setSlideImg(String slideImg) {
		this.slideImg = slideImg;
	}

	public String getTerm() {
		return term;
	}

	public void setTerm(String term) {
		this.term = term;
	}

	public String getDay1() {
		return day1;
	}

	public void setDay1(String day1) {
		this.day1 = day1;
	}

	public String getDay2() {
		return day2;
	}

	public void setDay2(String day2) {
		this.day2 = day2;
	}

	public String getDay3() {
		return day3;
	}

	public void setDay3(String day3) {
		this.day3 = day3;
	}

	public String getDay4() {
		return day4;
	}

	public void setDay4(String day4) {
		this.day4 = day4;
	}

	public String getDay5() {
		return day5;
	}

	public void setDay5(String day5) {
		this.day5 = day5;
	}

	public String getSpot() {
		return spot;
	}

	public void setSpot(String spot) {
		this.spot = spot;
	}

	public int getLink() {
		return link;
	}

	public void setLink(int link) {
		this.link = link;
	}

	

	
}
