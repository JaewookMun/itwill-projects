package jeju.olleh.mapper;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Member;

public interface MemberMapper {
	int insertMember(Member member);
	int updateMember(Member member);
	int updatePw(Member member);
	int deleteMember(Member member);
	Member selectMember(String id);
	String selectId(Member member);
	//관리자 로그인
	Member selectAdmin(int status);
	List<Member> selectMemberList();
	//멤버 카운터
	int memberCount();
	//맴버 페이징
	List<Member> memberListPage(Map<String, Object> map);
	int updateStatus(Member member);
}
