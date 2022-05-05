package jeju.olleh.exception;

public class NoRightToAccessException extends Exception {
	private static final long serialVersionUID = 1L;
	
	public NoRightToAccessException() {

	}

	public NoRightToAccessException(String message) {
		super(message);
	}
	

}
