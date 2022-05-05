package jeju.olleh.exception;

//로그인 실패 대비한 예외 클래스
public class LoginFailException extends Exception {
	private static final long serialVersionUID = 1L;

	private String id;
	
	public LoginFailException() {
		// TODO Auto-generated constructor stub
	}
	
	public LoginFailException(String message, String id) {
		super(message);
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
}
