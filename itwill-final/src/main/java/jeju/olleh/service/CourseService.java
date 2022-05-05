package jeju.olleh.service;

import java.util.List;

import jeju.olleh.dto.Course;

public interface CourseService {
	void addCourse(Course course);
	List<Course> getCourseList(int category);
}
