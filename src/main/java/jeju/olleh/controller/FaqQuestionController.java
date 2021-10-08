package jeju.olleh.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.HtmlUtils;

import jeju.olleh.dto.FaqQuestion;
import jeju.olleh.dto.Member;
import jeju.olleh.exception.MemberNotFoundException;
import jeju.olleh.service.FaqQuestionService;
import jeju.olleh.util.Pager;

@Controller
public class FaqQuestionController {
	@Autowired
	private FaqQuestionService faqQuestionService;
		
	 @GetMapping("/FAQ")
	    public String FAQ(Model model, HttpSession session) throws MemberNotFoundException {
		 Member loginMember = (Member)session.getAttribute("loginMember");
	    	
	    	model.addAttribute("member", loginMember);
	    	
	        return "honor/FAQ";
	    }
	 
	 @GetMapping("/FAQ_question")
	 public String Faq_question(Model model, HttpSession session) throws MemberNotFoundException {
		 Member loginMember = (Member)session.getAttribute("loginMember");
		 
		 model.addAttribute("member", loginMember);
		
		 FaqQuestion faq_questionNum = (FaqQuestion)session.getAttribute("faq_questionNum");
		 model.addAttribute("faq_question", faq_questionNum);
		 
		 return "honor/FAQ_question";
	 }
	 
	 //sql 전달및 로그인 유지 
	  @RequestMapping(value = "/FAQ", method = RequestMethod.POST)
	    public String FAQ(@ModelAttribute FaqQuestion faqQuestion, Model model, HttpSession session) throws MemberNotFoundException {
		  //로그인 유지 
		  Member loginMember = (Member)session.getAttribute("loginMember");
			 model.addAttribute("member", loginMember);
		  
		  faqQuestionService.addFaqQuestion(faqQuestion);
	       return "honor/FAQ";
	    }
	
    //페이징 처리 
    @RequestMapping(value = "/faqQuestion_list", method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> faqQuestionList(@RequestParam(defaultValue = "1")int pageNum){
		
    	int totalBoard = faqQuestionService. getFaqQuestionCount();
    	int pageSize = 5;
    	int blockSize = 5;
    	
    	Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
    	
    	Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("restFaqQuestion", faqQuestionService.getFaqQuestionList(pagerMap));
		returnMap.put("pager", pager);
    	
    	return returnMap;
    	
    }
    
    @RequestMapping(value = "/FAQ_question", method = RequestMethod.POST)
    @ResponseBody
    public String faqQuestionAdd(@RequestBody FaqQuestion faqQuestion, HttpSession session, Model model) {
		faqQuestion.setContent(HtmlUtils.htmlEscape(faqQuestion.getContent()));
		faqQuestionService.addFaqQuestion(faqQuestion);
		
		Member loginMember = (Member)session.getAttribute("loginMember");
    	
    	model.addAttribute("member", loginMember);
    	return "success";
    	
    }
    
    @RequestMapping(value="/faqQusetion_view/{num}", method = RequestMethod.POST)
    @ResponseBody
    public FaqQuestion faqQuestionView(@PathVariable int num) {
    	return faqQuestionService.getFaqQuestion(num);
    }
    
    
    @RequestMapping(value="/faqQuestion_modify", method = {RequestMethod.PUT, RequestMethod.PATCH})
    @ResponseBody
    public String faqQuestionModify(@RequestBody FaqQuestion faqQuestion) {
		faqQuestionService.modifyFaqQuestion(faqQuestion);
    	return "success";
    }
    
    @RequestMapping(value="/faqQuestion_remove/{num}", method = RequestMethod.DELETE)
    @ResponseBody
    public String faqQuestionRemove(@PathVariable int num) {
		faqQuestionService.removeFaqQuestion(num);
    	return "success";
    	
    }
    
}    