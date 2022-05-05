package jeju.olleh.exception;

//회원정보 조작시 해당 회원정보가 없는 예외를 대비한 클래스
public class MemberNotFoundException extends Exception {
	private static final long serialVersionUID = 1L;

	public MemberNotFoundException() {
		// TODO Auto-generated constructor stub
	}
	
	public MemberNotFoundException(String message) {
		super(message);
	}
}
