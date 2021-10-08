package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jeju.olleh.dto.ScheduleComment;
import jeju.olleh.dto.ScheduleCommentMember;
import jeju.olleh.dto.ScheduleCommentMemberWitSchedule;
import jeju.olleh.mapper.ScheduleCommentMapper;

@Repository
public class ScheduleCommentDAOimpl implements ScheduleCommentDAO {

	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertComment(ScheduleComment comment) {
		return sqlSession.getMapper(ScheduleCommentMapper.class).insertComment(comment);
	}

	@Override
	public int deleteComment(Map<String, Object> map) {
		return sqlSession.getMapper(ScheduleCommentMapper.class).deleteComment(map);
	}

	@Override
	public int updateComment(ScheduleComment comment) {
		return sqlSession.getMapper(ScheduleCommentMapper.class).updateComment(comment);
	}

	@Override
	public int selectNextSeqNo() {
		return sqlSession.getMapper(ScheduleCommentMapper.class).selectNextSeqNo();
	}

	@Override
	public List<ScheduleCommentMember> selectCommentList(int scheduleKey) {
		return sqlSession.getMapper(ScheduleCommentMapper.class).selectCommentList(scheduleKey);
	}

	@Override
	public List<ScheduleCommentMemberWitSchedule> selectMyCommentList(int no) {
		return sqlSession.getMapper(ScheduleCommentMapper.class).selectMyCommentList(no);
	}

}
