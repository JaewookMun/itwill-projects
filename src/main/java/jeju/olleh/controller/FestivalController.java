package jeju.olleh.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import jeju.olleh.dto.Festival;
import jeju.olleh.service.FestivalService;

@Controller
public class FestivalController {
	
	@Autowired
	private FestivalService festivalService;
	
	// 리스트 출력
	@GetMapping("/festival")
	public String showFestivalList(Model model) {
		//List<Festival> festivalList = festivalService.getFestivalList();
		
		model.addAttribute("festivalList", festivalService.getFestivalList());
		
		return "festival/festival";
	}
	
	
	// 하나 출력
	@GetMapping("/festival/{no}")
	public String showFestival(@PathVariable(name = "no") int no, Model model) {
		
		Festival festival= festivalService.getFestival(no);	
		model.addAttribute("festival", festival);
		
		return "/festival/festival_detail";	
	}
	
}
