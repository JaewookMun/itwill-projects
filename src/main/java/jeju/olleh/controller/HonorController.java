package jeju.olleh.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;

import jeju.olleh.dto.Honor;
import jeju.olleh.dto.Member;
import jeju.olleh.exception.MemberNotFoundException;
import jeju.olleh.service.HonorService;
import jeju.olleh.util.Pager;

@Controller
public class HonorController {
	@Autowired
	private WebApplicationContext context;
	@Autowired
	private HonorService honorService;

	 @GetMapping("/honor_one/{pageNum}")
	    public String honor_one(@PathVariable int pageNum, Model model, HttpSession session) throws MemberNotFoundException {
		 Member loginMember = (Member)session.getAttribute("loginMember");
		 model.addAttribute("member", loginMember);
		 
		// Honor honor = (Honor)session.getAttribute("honor");
		// model.addAttribute("honor", honorService.getAllHonorList());
		
		 /////////////////
		 
		 int pageSize=12;
		 int totalBoard=honorService.getHonorCount();
		 int blockSize=5;
		 
		 Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		 model.addAttribute("pager", pager);
		 
		 Map<String, Object> rowMap=new HashMap<String, Object>();
		 rowMap.put("startRow", pager.getStartRow());
		 rowMap.put("endRow", pager.getEndRow());
		 
		 List<Honor> honorList= honorService.getHonorList(rowMap);
		 
		 model.addAttribute("honorList", honorList);
		 
		 return "honor/honor_one";
	 }
	 
	 @PostMapping("/honor_one")
	 public String upload(@ModelAttribute Honor honor, Model model, HttpSession session) throws MemberNotFoundException, IllegalStateException, IOException{
		 /*
		 if(honor.getFile().isEmpty()) {//파일이 전달되지 않은 경우
				return "file/file_upload";
			}
		*/	
		//관리자 로그인 
		
		 Member loginMember = (Member)session.getAttribute("loginMember");
		 model.addAttribute("member", loginMember);
	    
		 //파일 업로드 
		 String uploadDir = context.getServletContext().getRealPath("/resources/upload/honor");
		 
		 //String origin= honor.getFile().getOriginalFilename();
		 
		 String upload = System.currentTimeMillis()+"";
		 
		 honor.getFile().transferTo(new File(uploadDir, upload));
		 
		// honor.setOrigin(origin);
		 honor.setUpload(upload);
		 model.addAttribute("honor", honorService.getAllHonorList());
		 honorService.addHonor(honor);
	    	
		
		 
		 return "redirect:/honor_one/1";
	 }
	 
	 //write
	 @GetMapping("/honor_write")
	 public String honor_write(Model model, HttpSession session) throws MemberNotFoundException {
		 Member loginMember = (Member)session.getAttribute("loginMember");
		 
		 model.addAttribute("member", loginMember);
		 
		 return "/honor/honor_write";
	 }
	 
	 //내용 세이브 
	 @RequestMapping(value = "/honor_write", method = RequestMethod.POST)
	    public String addHonor(@ModelAttribute Honor honor, Model model) throws MemberNotFoundException {
		   honorService.addHonor(honor);
		   return "redirect:/honor_one/1";
	    }
	
    
    @GetMapping("/honor_two")
    public String honor_two(@RequestParam(value="category", defaultValue="2") int category, Model model) {
        return "/honor/honor_two";
    }
    
    @GetMapping("/honor_three")
    public String honor_three(@RequestParam(value="category", defaultValue="3") int category, Model model) {
        return "/honor/honor_three";
    }
    

	
	/* 삭제 */
	@RequestMapping(value = "/removeHonor/{num}", method = RequestMethod.GET)
	public String removeHonor(@ModelAttribute Honor honor, Model model) {
		honorService.removeHonor(honor.getNum());
		
		return "redirect:/honor_one/1";
	}
	
	/* 수정 페이지로 이동 */
	@GetMapping("/updateHoner/{num}")
	public String chacngeHonor(@PathVariable(name = "num") int num, Model model) {
		
		Honor honor= honorService.getHonor(num);
		
		model.addAttribute("honor", honor);
		
		System.out.println("수정 페이지로 이동");
		
		return "/honor/honor_write";
	}
	
	
 
}    
