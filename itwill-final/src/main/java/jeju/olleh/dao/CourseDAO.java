package jeju.olleh.dao;

import java.util.List;

import jeju.olleh.dto.Course;

public interface CourseDAO {
	int insertCourse(Course course);
	List<Course> getCourseList(int category);
}
