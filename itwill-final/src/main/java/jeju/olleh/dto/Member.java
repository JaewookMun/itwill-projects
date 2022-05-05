package jeju.olleh.dto;

/*
이름             널?       유형            
-------------- -------- ------------- 
NO             NOT NULL NUMBER        - PK
ID             NOT NULL VARCHAR2(50)  
NAME           NOT NULL VARCHAR2(50)  
PW             NOT NULL VARCHAR2(200) 
BIRTH          NOT NULL VARCHAR2(30)   
PHONE          NOT NULL VARCHAR2(30)  
MAIN_ADDRESS   NOT NULL VARCHAR2(100) 
DETAIL_ADDRESS          VARCHAR2(100) 
ZIPCODE                 VARCHAR2(10)  
MEMBER_IMG              VARCHAR2(100) 
STATUS         NOT NULL NUMBER        
JOIN_DATE               DATE                 

 */

public class Member {
	private int no;
	private String id;
	private String name;
	private String pw;
	private String birth;
	private String phone;
	private String mainAddress;
	private String detailAddress;
	private String zipcode;
	private String memberImg;
	private int status;
	private String joinDate;

	
	public Member() {
		// TODO Auto-generated constructor stub
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPw() {
		return pw;
	}

	public void setPw(String pw) {
		this.pw = pw;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getMainAddress() {
		return mainAddress;
	}

	public void setMainAddress(String mainAddress) {
		this.mainAddress = mainAddress;
	}

	public String getDetailAddress() {
		return detailAddress;
	}

	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public String getMemberImg() {
		return memberImg;
	}

	public void setMemberImg(String memberImg) {
		this.memberImg = memberImg;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}


}
