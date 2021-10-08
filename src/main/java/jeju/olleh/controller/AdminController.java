package jeju.olleh.controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;

import jeju.olleh.dto.Course;
import jeju.olleh.dto.FaqQuestion;
import jeju.olleh.dto.Festival;
import jeju.olleh.dto.Member;
import jeju.olleh.exception.MemberNotFoundException;
import jeju.olleh.service.CourseService;
import jeju.olleh.service.FaqQuestionService;
import jeju.olleh.service.FestivalService;
import jeju.olleh.service.MemberService;
import jeju.olleh.util.Pager;

@Controller
public class AdminController {
	@Autowired
	private MemberService memberService;
	@Autowired
	private FaqQuestionService faqQuestionService;
	@Autowired
	private CourseService courseServuce;
	@Autowired
	private FestivalService festivalService;
	
	private WebApplicationContext context;
	
	/*
	 * @RequestMapping(value = "/admin") public String showAdmin(HttpSession
	 * session, Model model, Member member) throws MemberNotFoundException {
	 * session.setAttribute("adminLogin", memberService.getMember(member.getId()));
	 * return "admin/admin_main"; }
	 */
	
	@RequestMapping(value = "/admin")
	public String adminList(Model model) {
		int member=memberService.memberCount();
		int faq=faqQuestionService.getFaqQuestionCount();
		int pageSize=3;
		int blockSize=1;
		
		Pager pager=new Pager(member, faq, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("memberList", memberService.memberListPage(pageMap));
		model.addAttribute("FaqQuestionList", faqQuestionService.getFaqQuestionList(pageMap));
		model.addAttribute("pager", pager);
		return "admin/admin_main";
	}
	
	@RequestMapping(value = "memberList/{pageNum}")
	public String memberList(@PathVariable int pageNum, Model model) {
		Map<String , Object> map=new HashMap<String, Object>();
		map.put("pageNum", pageNum);
		int totalMember=memberService.memberCount();
		int pageSize=10;
		int blockSize=10;
		
		Pager pager=new Pager(pageNum, totalMember, pageSize, blockSize);
		
		Map<String, Object> pageMap=new HashMap<String, Object>();
		pageMap.put("startRow", pager.getStartRow());
		pageMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("memberList", memberService.memberListPage(pageMap));
		model.addAttribute("pager", pager);
		return "admin/memberList";
	}
	
	//페이징 구간
	/*
	 * public Map<Stirng, Object> memberPage(@RequestParam(defaultValue = "1")int
	 * pageNim) { int totMember=memberService.getMember(null); }
	 */
	
	
	/*
	 * @RequestMapping(value = "FaqList") public String faqList(Model model) {
	 * model.addAttribute("adminFaqQuestList",
	 * faqQuestionService.adminFaqQuestList()); return "admin/FaqList"; }
	 */
	
	
	@RequestMapping(value = "/faqList/{pageNum}", method = RequestMethod.GET)
	public String faqAllList(@PathVariable int pageNum, Model model) {
		Map<String, Object> map= new HashMap<String, Object>(); 
		map.put("pageNum", pageNum);
	 
		int faqCount= faqQuestionService.getFaqQuestionCount(); 
		int pageSize= 10;
		int blockSize= 10;
	 
		Pager pager= new Pager(pageNum, faqCount, pageSize, blockSize);
		map.put("startRow", pager.getStartRow()); 
		map.put("endRow", pager.getEndRow());
	  
		List<FaqQuestion> faqList= faqQuestionService.getFaqQuestionList(map);
	 
		model.addAttribute("pager", pager); 
		model.addAttribute("faqList", faqList);
	 
		return "admin/faqList";
	  
	 }
	 
	/*
	@RequestMapping(value = "/faqList")
	@ResponseBody
	public String faqList(@RequestParam(defaultValue = "1") int pageNum, Model model) {
		
		int totalBoard= faqQuestionService.getFaqQuestionCount();
		int pageSize= 10;
		int blockSize= 10;
		
		Pager pager= new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap= new HashMap<String, Object>();
		pagerMap.put("StartRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		model.addAttribute("faqList", faqQuestionService.getFaqQuestionList(pagerMap));
		model.addAttribute("pager", pager);
		
		return "admin/faqList";
	}
	*/
	
	
	
	/*
	@RequestMapping(value = "modifyMember")
	public String modifyMember(@ModelAttribute Member member) throws MemberNotFoundException {
		memberService.modifyMember(member);
		return "admin/modifyMember";
	}
	*/
	
	@RequestMapping(value = "updateStatus")
	public String updateMember(@ModelAttribute Member member) {
		System.out.println("update status!!!!!");
		memberService.updateStatus(member);
		return "admin/memberList";
	}
	
	@RequestMapping(value = "modifyMember")
	public String removeMember(@ModelAttribute Member member) throws MemberNotFoundException {
		memberService.removeMember(member);
		return "admin/modifyMember";
	}
	/*
	 * @RequestMapping(value = "/admin", method = RequestMethod.GET) public String
	 * showAdmin(@ModelAttribute Member member, HttpSession session) throws
	 *{1} MemberNotFoundException { session.setAttribute("loginAdmin",
	 * memberService.selectAdmin(member.getStatus())); if(member.getStatus()==9) {
	 * return "/admin/admin_main"; }
	 * 
	 * return "/main/home"; }
	 */
	
	@RequestMapping(value = "/addCourse", method = RequestMethod.GET)
	public String addCourse() {
		return "admin/addCourse";
	}
	
	/*
	@RequestMapping(value = "/addCourse", method = RequestMethod.POST)
	public String addCourse(@RequestParam MultipartFile uploadCourse, Model model) throws IllegalStateException, IOException {
		String uploadDir=context.getServletContext().getRealPath("/resources/img/course");
		
		File file=new File(uploadDir, uploadCourse.getOriginalFilename());
		
		uploadCourse.transferTo(file);
		
		model.addAttribute("uploadFile", uploadCourse.getOriginalFilename());
		return "admin/addCourse";
	}
	*/
	
	@RequestMapping(value = "/addCourse", method = RequestMethod.POST)
	public String addCourse(@ModelAttribute Course course, Model model) throws IllegalStateException, IOException {
		//파일 업로드 
		/*
		 * String uploadDir =
		 * context.getServletContext().getRealPath("/WEB-INF/upload"); String upload =
		 * System.currentTimeMillis()+"";
		 * 
		 * course.getFile().transferTo(new File(uploadDir, upload));
		 * 
		 * course.setUpload(upload);
		 */
		courseServuce.addCourse(course);
		return "admin/addCourse";
	}
	
	// 축제
	@RequestMapping(value = "/addFestival", method = RequestMethod.GET)
	public String addFestival(Model model ) {
		
		model.addAttribute("festivalList", festivalService.getFestivalList());
		
		return "admin/addFestival";
	}
	
	
	/* 축제 페이징 처리
	@RequestMapping(value = "/addFestival/{pageNum}", method = RequestMethod.GET)
	public String festivalPageList(@PathVariable int pageNum, Model model) {
		Map<String, Object> map= new HashMap<String, Object>(); 
		map.put("pageNum", pageNum);
	 
		int faqCount= faqQuestionService.getFaqQuestionCount(); 
		int pageSize= 5;
		int blockSize= 5;
	 
		Pager pager= new Pager(pageNum, faqCount, pageSize, blockSize);
		map.put("startRow", pager.getStartRow()); 
		map.put("endRow", pager.getEndRow());
	  
		List<Festival> festivalList= festivalService.getFestivalPageList(map);
	 
		model.addAttribute("pager", pager); 
		model.addAttribute("festivalList", festivalList);
	 
		return "admin/addFestival";
	  
	 }
	  */
	
	/* 업로드 */
	@RequestMapping(value = "/addFestival", method = RequestMethod.POST)
	public String addFestival(@ModelAttribute Festival festival, Model model) throws IllegalStateException, IOException {
		
		festivalService.addFestival(festival);
		
		model.addAttribute("festivalList", festivalService.getFestivalList());
		return "redirect:/addFestival";
	}
	
	/* 삭제 */
	@RequestMapping("/removeFestival/{no}")
	public String removeFestival(@ModelAttribute Festival festival, Model model) {	
		
		//festivalService.removeFestival(festivalService.getFestival(festival.getNo()));
		
		return "redirect:/addFestival";
	}
}
