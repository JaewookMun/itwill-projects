package jeju.olleh.service;

import java.util.List;
import java.util.Map;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jeju.olleh.dao.MemberDAO;
import jeju.olleh.dto.Member;
import jeju.olleh.exception.LoginFailException;
import jeju.olleh.exception.MemberExistsException;
import jeju.olleh.exception.MemberNotFoundException;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;
	
	@Transactional
	@Override
	public void addMember(Member member) throws MemberExistsException{
		//회원가입시 이메일(아이디) 중복되면 예외 발생
		if(memberDAO.selectMember(member.getId())!=null) {
			throw new MemberExistsException("이미 사용중인 이메일을 입력했습니다.", member);
		}
		//비밀번호 암호화 처리
		member.setPw(BCrypt.hashpw(member.getPw(), BCrypt.gensalt()));
		
		memberDAO.insertMember(member);
	}
	
	@Transactional
	@Override
	public void modifyMember(Member member) throws MemberNotFoundException{
		//기존 회원 아닐시 예외 발생
		if(memberDAO.selectMember(member.getId())==null) {
			throw new MemberNotFoundException("해당 아이디의 회원정보가 존재하지 않습니다.");
		}
		memberDAO.updateMember(member);
	}
	
	//비번 찾기
	@Transactional
	@Override
	public void modifyPw(Member member) throws MemberNotFoundException {
		
		if(memberDAO.selectMember(member.getId())==null) {
			throw new MemberNotFoundException("해당 아이디의 회원정보가 존재하지 않습니다.");
		}

		String pw = member.getPw();
		
		if(pw!=null && !pw.equals("")) {
			member.setPw(BCrypt.hashpw(member.getPw(), BCrypt.gensalt()));
		}
		
		memberDAO.updatePw(member);
	}
	
	@Transactional
	@Override
	public void removeMember(Member member) throws MemberNotFoundException{
		if(memberDAO.selectMember(member.getId())==null) {
			throw new MemberNotFoundException("해당 아이디의 회원정보가 존재하지 않습니다.");
		}
		memberDAO.deleteMember(member);
	}

	@Override
	public Member getMember(String id) throws MemberNotFoundException {
		Member member = memberDAO.selectMember(id);
		if(member==null) {
			throw new MemberNotFoundException("해당 아이디의 회원정보가 존재하지 않습니다.");
		}
		return member;
	}
	
	//아이디 찾기
	@Override
	public String getId(Member member) throws MemberNotFoundException {		
		String id = memberDAO.selectId(member);
		
		if(id==null || id=="") {
			throw new MemberNotFoundException("해당 아이디의 회원정보가 존재하지 않습니다.");
		}			
		return memberDAO.selectId(member);
	}

	@Override
	public List<Member> getMemberList() {
		return memberDAO.selectMemberList();
	}
	
	//관리자
	@Override
	public Member selectAdmin(int status) throws MemberNotFoundException {
		Member member = memberDAO.selectAdmin(status);
		if(member.getStatus()!=9) {
			throw new MemberNotFoundException("관리자 계정이 아닙니다.");
		}
		return member;
	}
	
	//로그인 인증, 예외 미발생시 로그인 성공
	@Override
	public void loginAuth(Member member) throws LoginFailException {
		Member authMember = memberDAO.selectMember(member.getId());
		if(authMember == null) {//아이디 인증 실패시 예외 발생
			throw new LoginFailException("아이디의 회원정보가 존재하지 않습니다.",member.getId());
		}
		
		if(authMember.getStatus() == 0) {
			throw new LoginFailException("탈퇴한 회원입니다.",member.getId());
		}
		
		if(!BCrypt.checkpw(member.getPw(), authMember.getPw())) {	//비밀번호 인증 실패시 예외 발생
			throw new LoginFailException("아이디가 없거나 비밀번호가 맞지 않습니다.",member.getId());
		}
	}
	
	//회원몇명인지 카운트
	@Override
	public int memberCount() {
		return memberDAO.memberCount();
	}
	
	@Override
	public List<Member> memberListPage(Map<String, Object> map) {
		return memberDAO.memberListPage(map);
	}

	@Override
	public int updateStatus(Member member) {
		return memberDAO.updateStatus(member);
	}


}
