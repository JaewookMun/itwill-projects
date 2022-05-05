package jeju.olleh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jeju.olleh.dao.CourseDAO;
import jeju.olleh.dto.Course;

@Service
public class CourseServiceImpl implements CourseService {
	
	@Autowired
	private CourseDAO courseDAO;

	@Override
	public List<Course> getCourseList(int category) {
		return courseDAO.getCourseList(category);
	}

	@Override
	public void addCourse(Course course) {
		courseDAO.insertCourse(course);
	}
	
}
