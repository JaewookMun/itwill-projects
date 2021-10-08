package jeju.olleh.mapper;

import java.util.List;

import jeju.olleh.dto.Course;

public interface CourseMapper {
	int insertCourse(Course course);
	List<Course> selectCourseList(int category);
}
