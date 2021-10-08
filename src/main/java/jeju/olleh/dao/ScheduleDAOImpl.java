package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jeju.olleh.dto.Schedule;
import jeju.olleh.mapper.ScheduleMapper;

@Repository
public class ScheduleDAOImpl implements ScheduleDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertSchedule(Schedule schedule) {

		return sqlSession.getMapper(ScheduleMapper.class).insertSchedule(schedule);
	}

	@Override
	public int updateSchedule(Schedule schedule) {

		return sqlSession.getMapper(ScheduleMapper.class).updateSchedule(schedule);
	}

	@Override
	public int deleteSchedule(int scheduleNo) {
		return sqlSession.getMapper(ScheduleMapper.class).deleteSchedule(scheduleNo);
	}

	@Override
	public int selectScheduleCount() {
		return sqlSession.getMapper(ScheduleMapper.class).selectScheduleCount();
	}
	
	@Override
	public Schedule selectSchedule(int scheduleNo) {

		return sqlSession.getMapper(ScheduleMapper.class).selectSchedule(scheduleNo);
	}

	@Override
	public List<Schedule> selectMonthScheduleList(String month) {

		return sqlSession.getMapper(ScheduleMapper.class).selectMonthScheduleList(month);
	}

	@Override
	public List<Schedule> selectAllScheduleList(Map<String, Object> map) {

		return sqlSession.getMapper(ScheduleMapper.class).selectAllScheduleList(map);
	}


}
