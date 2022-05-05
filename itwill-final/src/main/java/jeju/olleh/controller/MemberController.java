package jeju.olleh.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jeju.olleh.dto.Member;
import jeju.olleh.exception.LoginFailException;
import jeju.olleh.exception.MemberExistsException;
import jeju.olleh.exception.MemberNotFoundException;
import jeju.olleh.exception.NoRightToAccessException;
import jeju.olleh.service.FaqQuestionService;
import jeju.olleh.service.MemberService;
import jeju.olleh.service.ScheduleCommentService;
import jeju.olleh.service.ScheduleParticipantService;

@Controller
@RequestMapping("/member")
public class MemberController {
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private ScheduleParticipantService scheduleParticipantService;
	
	@Autowired
	private ScheduleCommentService scheduleCommentService;
	
	@Autowired
	private FaqQuestionService faqQuestionService;
	
	//회원가입 입력
	@RequestMapping(value = "/join",method = RequestMethod.GET)
	public String join() {		
		return "/member/join";
	}
	
	//회원가입 처리
	@RequestMapping(value = "/join",method = RequestMethod.POST)
	public String join(@ModelAttribute Member member, Model model) throws MemberExistsException {
		memberService.addMember(member);
		return "redirect:/member/login";
	}
	
	//로그인 입력
	@RequestMapping(value = "/login",method = RequestMethod.GET)
	public String login() {
		return "/member/login";
	}
	
	//로그인 처리(인증)
	@RequestMapping(value = "/login",method = RequestMethod.POST)
	public String login(@ModelAttribute Member member, HttpSession session) 
				throws LoginFailException, MemberNotFoundException {
		//인증 실패시 예외
		memberService.loginAuth(member);
		
		//인증 성공, 권한 정보 저장
		session.setAttribute("loginMember", memberService.getMember(member.getId()));
		
		//(loginAuth메소드에서 이미 처리) 탈퇴회원일 때
		/*
		if(member.getStatus()==0) {	
			return "/member/login";
		}
		*/
		return "/main/home";
	}
	
	//로그아웃 처리
	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/member/login";
	}
	
	//아이디 및 비번찾기
	@RequestMapping(value = "/find")
	public String find() {
		return "/member/find";
	}
	
	//아이디 찾기 처리
	@RequestMapping(value = "/find_id",method = RequestMethod.POST)
	public String find_id(@ModelAttribute Member member, Model model) throws MemberNotFoundException{
		memberService.getId(member);
		
		model.addAttribute("id", memberService.getId(member));	 	
		return "member/find_id";
	}

	//비번 찾기 처리
	@RequestMapping(value = "/find_pw",method = RequestMethod.POST)
	public String find_pw(@ModelAttribute Member member, HttpSession session) throws MemberNotFoundException{
		memberService.modifyPw(member);
		
		session.setAttribute("loginMember", memberService.getMember(member.getId())); 
		
		session.invalidate();
		
		return "member/find_pw";
	}

	
	//마이페이지
	@RequestMapping(value = "/mypage")
	public String mypage(Model model, HttpSession session) throws MemberNotFoundException {
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		model.addAttribute("member", loginMember);
		//제주올레걷기축제 참가신청 내역
		model.addAttribute("mySheduleList", scheduleParticipantService.getScheduleParticipantsWithNo(loginMember.getNo()));
		//나의 문의댓글 내역
		model.addAttribute("myCommentList", scheduleCommentService.getMyScheduleCommentInfoList(loginMember.getNo()));
		//나의 faq 문의 내역
		model.addAttribute("myFaqList", faqQuestionService.getId(loginMember.getId()));
		
		//return "redirect:/member/mypage?id="+model.getAttribute(id);
		return "member/mypage";
	}
	
	//회원정보 변경 입력
	@RequestMapping(value = "/edit", method = RequestMethod.GET)
	public String edit(Model model, HttpSession session) throws MemberNotFoundException {
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		model.addAttribute("member", loginMember);
		
		return "member/edit";
	}
	
	//회원정보 변경 처리
	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String edit(@ModelAttribute Member member, HttpSession session) throws MemberNotFoundException {
		memberService.modifyMember(member);
		
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		//변경회원이 현재 로그인 회원인 경우 세션에 저장된 관련 정보 변경
		if(loginMember.getId().equals(member.getId())) {
			session.setAttribute("loginMember", memberService.getMember(member.getId()));
		}		
		return "redirect:/member/mypage?id="+member.getId();
	}

	
	//회원 탈퇴 처리
	@RequestMapping(value = "/out")
	public String out(HttpSession session) throws MemberNotFoundException {
		Member loginMember=(Member)session.getAttribute("loginMember");
		memberService.removeMember(loginMember);
		
		session.setAttribute("loginMember", memberService.getMember(loginMember.getId()));
		session.invalidate();
		
		return "member/login";
	}
	
	
	//이용약관
	@RequestMapping(value = "/pesonal")
	public String pesonal() {
		return "/member/pesonal";
	}
	
	@RequestMapping(value = "/contract")
	public String contract() {
		return "/member/contract";
	}
	
	@RequestMapping(value = "/sms")
	public String sms() {
		return "/member/sms";
	}
	
	
	
	
	
	//예외처리 메소드
	//접근권한 없을시 예외처리
	@ExceptionHandler(NoRightToAccessException.class)
	public String exceptionHander(NoRightToAccessException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		return "member/error/error";
	}
		
	//회원가입 시 아이디 중복 예외처리
	@ExceptionHandler(MemberExistsException.class)
	public String exceptionHander(MemberExistsException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("member", exception.getMember());
		return "member/error/error";
	}
	
	//회원 정보 찾을 수 없을시 예외처리
	@ExceptionHandler(MemberNotFoundException.class)
	public String exceptionHander(MemberNotFoundException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		return "member/error/error";	
	}
	
	//로그인 실패시 예외처리
	@ExceptionHandler(LoginFailException.class)
	public String exceptionHander(LoginFailException exception, Model model) {
		model.addAttribute("message", exception.getMessage());
		model.addAttribute("id", exception.getId());
		return "member/error/error";	
	}
	
	//모든 예외처리 핸들러 (나중에 등록)
	@ExceptionHandler(Exception.class)
	public String exceptionHander() {
		return "member/error/errorAll";
	}

}
