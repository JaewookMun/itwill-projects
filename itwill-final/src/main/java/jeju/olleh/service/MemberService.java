package jeju.olleh.service;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Member;
import jeju.olleh.exception.LoginFailException;
import jeju.olleh.exception.MemberExistsException;
import jeju.olleh.exception.MemberNotFoundException;

public interface MemberService {
	void addMember(Member member) throws MemberExistsException;
	void modifyMember(Member member) throws MemberNotFoundException;
	void modifyPw(Member member) throws MemberNotFoundException;
	void removeMember(Member member) throws MemberNotFoundException;
	Member getMember(String id) throws MemberNotFoundException;
	String getId(Member member) throws MemberNotFoundException;
	List<Member> getMemberList();
	void loginAuth(Member member) throws LoginFailException;
	Member selectAdmin(int status) throws MemberNotFoundException;
	//페이징 관련
	int memberCount();
	List<Member> memberListPage(Map<String, Object> map);
	int updateStatus(Member member);
}
