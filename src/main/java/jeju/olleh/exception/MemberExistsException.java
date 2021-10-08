package jeju.olleh.exception;

import jeju.olleh.dto.Member;

//회원정보 중복을 대비한 예외 클래스
public class MemberExistsException extends Exception {
	private static final long serialVersionUID = 1L;
	
	private Member member;
	
	public MemberExistsException() {
		// TODO Auto-generated constructor stub
	}
	
	public MemberExistsException(String message, Member member) {
		super(message);
		this.member = member;
	}

	public Member getMember() {
		return member;
	}

	public void setMember(Member member) {
		this.member = member;
	}
}
