package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Member;

public interface MemberDAO {
	int insertMember(Member member);
	int updateMember(Member member);
	int updatePw(Member member);
	int deleteMember(Member member);
	Member selectMember(String id);
	String selectId(Member member);
	//관리자 
	Member selectAdmin(int status);
	//맴버 카우크
	int memberCount();
	List<Member> selectMemberList();
	List<Member> memberListPage(Map<String, Object> map); 
	int updateStatus(Member member);
}
