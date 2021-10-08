package jeju.olleh.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import jeju.olleh.dto.Member;
import jeju.olleh.exception.NotValidInputException;
import jeju.olleh.service.BoardService;
import jeju.olleh.service.HonorService;
import jeju.olleh.service.ScheduleService;
/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private BoardService boardserivce;
	
	@Autowired
	private HonorService honorService;
	
	@Autowired
	private ScheduleService scheduleService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 * @throws NotValidInputException 
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpSession session) throws NotValidInputException {
		Member loginMember=(Member)session.getAttribute("loginMember");
		model.addAttribute("member", loginMember);
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		/* 소식 게시판 리스트 */
		model.addAttribute("boardsList", boardserivce.getBoardList(1));
		
		/* 명예의 전당 */
		model.addAttribute("honorList", honorService.getAllHonorList());
		
		
		//model.addAttribute("schedule", scheduleService.getMonthScheduleList(null));
		return "/main/home";
		
	}	
	
	/* 여행 준비 */
	@RequestMapping(value = "/prepare")
	public String prepare() {
		return "/main/prepare";
	}	
	@RequestMapping("/prepare_tips")
	public String prepare_tips() {
		return "/main/prepare_tips";
	}
	@RequestMapping("/prepare_service")
	public String prepare_serivce() {
		return "/main/prepare_service";
	}
	@RequestMapping("/prepare_pass")
	public String prepare_pass() {
		return "/main/prepare_pass";
	}
	@RequestMapping("/prepare_benefit")
	public String prepare_benefit() {
		return "/main/prepare_benefit";
	}
	@RequestMapping("/prepare_chall")
	public String prepare_chall() {
		return "/main/prepare_chall";
	}
	
	/* 축제 */
	@RequestMapping("/center_info")
	public String center() {
		return "/center/center_info";
	}
	@RequestMapping("/center_center")
	public String center1() {
		return "/center/center_center";
	}
	@RequestMapping("/center_ganse")
	public String center2() {
		return "/center/center_ganse";
	}
}
