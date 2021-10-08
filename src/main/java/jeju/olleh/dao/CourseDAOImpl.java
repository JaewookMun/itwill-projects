package jeju.olleh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jeju.olleh.dto.Course;
import jeju.olleh.mapper.CourseMapper;

@Repository
public class CourseDAOImpl implements CourseDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<Course> getCourseList(int category) {
		return sqlSession.getMapper(CourseMapper.class).selectCourseList(category);
	}

	@Override
	public int insertCourse(Course course) {
		return sqlSession.getMapper(CourseMapper.class).insertCourse(course);
	} 
}
