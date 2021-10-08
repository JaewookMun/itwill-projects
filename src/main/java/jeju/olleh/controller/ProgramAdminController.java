package jeju.olleh.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;

import jeju.olleh.dto.Schedule;
import jeju.olleh.service.ProgramService;
import jeju.olleh.service.ScheduleService;
import jeju.olleh.util.Pager;

@Controller
@RequestMapping("/admin/program")
public class ProgramAdminController {
	
	@Autowired
	private ScheduleService scheduleService;
	
	@Autowired
	private ProgramService programService;
	
	
	@RequestMapping(value = "/schedule_register", method=RequestMethod.GET)
	public String uploadSchedule() {
		return "admin/program/schedule_register";
	}
	
	/**
	 * 프로그램에 작성된 notice 예시 출력
	 * 
	 * @param programType
	 * @return
	 */
	@RequestMapping("/notice_sample")
	@ResponseBody
	public String requestSample(int programType) {
		return programService.getProgramInfo(programType).getProgramContent(); 
	}
	
	
	@RequestMapping(value = "/schedule_register", method=RequestMethod.POST)
	public String uploadSchedule(@ModelAttribute Schedule schedule
			, @RequestParam String departureDate
			, String departureTime
			, @RequestParam String detailedLocation
			, String typeSelf) {
		
		
		
		schedule.setScheduleCourse(schedule.getScheduleCourse()+" 코스");
		schedule.setDepartureDatetime(departureDate+" "+departureTime);

		if(typeSelf.equals("0")) {
			schedule.setDepartureLocation(detailedLocation);
		}
		
		
		scheduleService.addSchedule(schedule);
		
		
		return "redirect:/admin/program/schedule_list/1";
	}
	
	@RequestMapping("/schedule_list/{pageNum}")
	public String showAllSchedule(@PathVariable int pageNum, Model model) {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("pageNum", pageNum);

		int scheduleCount=scheduleService.getScheduleCount();
		int pageSize=10;
		int blockSize=10;

		Pager pager=new Pager(pageNum, scheduleCount, pageSize, blockSize);
		map.put("startRow", pager.getStartRow());
		map.put("endRow", pager.getEndRow());
		
		List<Schedule> scheduleList = scheduleService.getAllScheduleList(map);
		
		model.addAttribute("pager", pager);
		model.addAttribute("scheduleList", scheduleList);
		
		return "admin/program/schedule_list";
	}
	
	@RequestMapping(value="/modify/{scheduleNo}", method = RequestMethod.GET)
	public String modifySchedule(@PathVariable int scheduleNo, Model model) {
		model.addAttribute("schedule", scheduleService.getSchedule(scheduleNo));
		
		return "admin/program/schedule_update";
	}
	
	
	@RequestMapping(value="/modify", method = RequestMethod.POST)
	public String modifySchedule(@ModelAttribute Schedule schedule
			, @RequestParam String departureDate
			, String departureTime
			, @RequestParam String detailedLocation
			, String typeSelf) {
		
		schedule.setScheduleCourse(schedule.getScheduleCourse()+" 코스");
		schedule.setDepartureDatetime(departureDate+" "+departureTime);

		if(typeSelf.equals("0")) {
			schedule.setDepartureLocation(detailedLocation);
		}
		
		scheduleService.modifySchedule(schedule);
		
		return "redirect:/admin/program/schedule_list/1";
	}
	
	@RequestMapping("/remove/{scheduleNo}")
	public String removeSchedule(@PathVariable int scheduleNo) {
		scheduleService.removeSchedule(scheduleNo);
		
		return "redirect:/admin/program/schedule_list/1";
	}
}
