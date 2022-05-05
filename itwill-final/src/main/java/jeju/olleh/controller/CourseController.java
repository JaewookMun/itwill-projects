package jeju.olleh.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.multipart.MultipartFile;

import jeju.olleh.dto.Course;
import jeju.olleh.dto.Member;
import jeju.olleh.exception.MemberNotFoundException;
import jeju.olleh.service.CourseService;

@Controller
public class CourseController {
	@Autowired
	private CourseService courseService;
	
	@RequestMapping("/courses")
	public String showCourseList(@RequestParam(value = "category", defaultValue = "1") int category
			, Model model, HttpSession session, Member member) throws MemberNotFoundException {
		Member loginMember = (Member)session.getAttribute("loginMember");
		 
		 model.addAttribute("member", loginMember);
		List<Course> search_List = courseService.getCourseList(category);
		
		model.addAttribute("search_List", search_List);

		return "/course/search_List";
	}
}
