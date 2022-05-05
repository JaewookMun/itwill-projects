package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jeju.olleh.dto.Member;
import jeju.olleh.mapper.MemberMapper;

@Repository
public class MemberDAOImpl implements MemberDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).insertMember(member);
	}

	@Override
	public int updateMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updateMember(member);
	}

	@Override
	public int deleteMember(Member member) {
		return sqlSession.getMapper(MemberMapper.class).deleteMember(member);
	}

	@Override
	public Member selectMember(String id) {
		return sqlSession.getMapper(MemberMapper.class).selectMember(id);
	}

	@Override
	public List<Member> selectMemberList() {
		return sqlSession.getMapper(MemberMapper.class).selectMemberList();
	}

	//관리자
	@Override
	public Member selectAdmin(int status) {
		return sqlSession.getMapper(MemberMapper.class).selectAdmin(status);
	}

	@Override
	public int updatePw(Member member) {	
		return sqlSession.getMapper(MemberMapper.class).updatePw(member);
	}

	@Override
	public String selectId(Member member) {
		return sqlSession.getMapper(MemberMapper.class).selectId(member);
	}

	@Override
	public int memberCount() {
		return sqlSession.getMapper(MemberMapper.class).memberCount();
	}
	
	@Override
	public List<Member> memberListPage(Map<String, Object> map) {
		return sqlSession.getMapper(MemberMapper.class).memberListPage(map);
	}

	@Override
	public int updateStatus(Member member) {
		return sqlSession.getMapper(MemberMapper.class).updateStatus(member);
	}

	

}
