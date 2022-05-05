package jeju.olleh.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import jeju.olleh.dto.Member;
import jeju.olleh.dto.Program;
import jeju.olleh.dto.Schedule;
import jeju.olleh.dto.ScheduleComment;
import jeju.olleh.dto.ScheduleCommentMember;
import jeju.olleh.dto.ScheduleParticipant;
import jeju.olleh.dto.ScheduleParticipantMember;
import jeju.olleh.exception.ExistingParticipantException;
import jeju.olleh.exception.NoRightToAccessException;
import jeju.olleh.exception.NotValidInputException;
import jeju.olleh.exception.NullContentException;
import jeju.olleh.service.ProgramService;
import jeju.olleh.service.ScheduleCommentService;
import jeju.olleh.service.ScheduleParticipantService;
import jeju.olleh.service.ScheduleService;

@Controller
@RequestMapping("/program")
public class ProgramController {
	
	@Autowired
	private ProgramService programService;
	
	@Autowired
	private ScheduleService scheduleService;
	
	@Autowired
	private ScheduleParticipantService participantService;
	
	@Autowired
	private ScheduleCommentService commentService;
	
	
	// 프로그램 - 전체일정
	@RequestMapping("/schedule")
	public String showSchedule(Model model) {
		
		return "program/schedule";
	}
	
	@RequestMapping("/month_schedule")
	@ResponseBody
	public List<Schedule> transferScheduleList(String month) throws NotValidInputException{
		List<Schedule> scheduleList=scheduleService.getMonthScheduleList(month);
		
		return scheduleList;
	}
	
	
	@RequestMapping("/schedule_view/{scheduleNo}")
	public String showScheduleView(@PathVariable int scheduleNo, Model model) {
		
		// 전달받은 스케쥴 번호로 필요한 객체 생성 - 스케쥴, 프로그램, 참가자, 댓글
		Schedule scheduleInfo = scheduleService.getSchedule(scheduleNo);
		
		Program programInfo= programService.getProgramInfo(scheduleInfo.getScheduleType());
		
		// 참가자 리스트 객체 설정
		Map<String, Object> participantMap=new HashMap<String, Object>();
		participantMap.put("scheduleKey", scheduleNo);

		List<ScheduleParticipantMember> participantInfoList=participantService.getScheduleParticipantInfoList(participantMap);
		
		// 문의댓글 객체
		List<ScheduleCommentMember> commentInfoList=commentService.getScheduleCommentInfoList(scheduleNo);

		int totalAttendance=0;
		for(ScheduleParticipantMember participant : participantInfoList) {
			totalAttendance+=participant.getParticipant().getParticipantNo();
		}
		
		model.addAttribute("scheduleInfo", scheduleInfo);
		model.addAttribute("programInfo", programInfo);
		model.addAttribute("participantInfoList", participantInfoList);
		model.addAttribute("totalAttendance", totalAttendance);
		model.addAttribute("commentInfoList", commentInfoList);
		
		return "program/schedule_view";
	}
	
	/**
	 * 로그인 회원만 접근가능
	 * LoginAuthInterceptor 이용
	 * @throws ExistingParticipantException 
	 */
	@RequestMapping(value="/schedule_view/participant/{scheduleNo}", method=RequestMethod.POST)
	public String participateProgram(@PathVariable int scheduleNo,
			@RequestParam int participantNo, HttpSession session) throws ExistingParticipantException {
		
		Member loginMember = (Member)session.getAttribute("loginMember");
		
		ScheduleParticipant participant=new ScheduleParticipant();
		participant.setScheduleKey(scheduleNo);
		participant.setParticipantCode(loginMember.getNo());
		participant.setParticipantCode(loginMember.getNo());
		participant.setParticipantNo(participantNo);
		
		participantService.addParticipantInfo(participant);
		
		
		return "redirect:/program/schedule_view/"+scheduleNo;
	}
	
	/**
	 * 로그인 회원만 접근가능
	 * LoginAuthInterceptor 이용
	 * @throws NullContentException 
	 */
	@RequestMapping(value="/schedule_view/comment/{scheduleNo}", method=RequestMethod.POST)
	public String commentOnSchedule(@PathVariable int scheduleNo,
			String commentContent, String answer, int refNo, HttpSession session) throws NullContentException {
		Member loginMember = (Member)session.getAttribute("loginMember");

		ScheduleComment comment=new ScheduleComment();
		comment.setScheduleKey(scheduleNo);
		comment.setCommentContent(commentContent);
		
		// 댓글의 답변이 달리면 answer가 전달 -> reLevel=1 설정
		if(answer!=null && !answer.equals("")) {
			comment.setCommentContent(answer);
			comment.setRefNo(refNo);
		}
		
		comment.setCommentCode(loginMember.getNo());
		
		commentService.addScheduleCommentInfo(comment);
		
		return "redirect:/program/schedule_view/"+scheduleNo;
	}
	
	@RequestMapping("/akajabong")
	public String showAkajabong() {
		return "program/akajabong";
	}
	
	@RequestMapping("/academy")
	public String showAcademy() {
		return "program/academy";
	}
	
	@RequestMapping("/clean_olle")
	public String showCleanOlle() {
		return "program/clean_olle";
	}
	
	@RequestMapping("/volunteer")
	public String showVolunteer() {
		return "program/volunteer";
	}
	
	@RequestMapping("/companion")
	public String showCompanion() {
		return "program/companion";
	}
	
	
	/*******************************************************************************************************************/
	/*******************************************************************************************************************/
	
	/**
	 * 로그인 하지 않은 사용자가 접근시 발생
	 * 
	 * @return
	 */
	@ExceptionHandler(NoRightToAccessException.class)
	public String catchNotLoginMember() {
		return "member/error/error";
	}

	/**
	 * 같은 계정으로 동일 프로그램에 중복으로 신청할 경우 발생
	 * 
	 * @param exception
	 * @param attributes
	 * @return
	 */
	@ExceptionHandler(ExistingParticipantException.class)
	public String alreadyApplied(ExistingParticipantException exception, RedirectAttributes attributes) {
		attributes.addFlashAttribute("message", exception.getMessage());
		
		return "redirect:/program/schedule_view/"+exception.getScheduleKey();
	}
	
	@ExceptionHandler(NullContentException.class)
	public String getNullException(NullContentException exception) {
		// temp
		exception.printStackTrace();
		return "program/schedule";
	}
	
}
