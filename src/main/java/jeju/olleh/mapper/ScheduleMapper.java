package jeju.olleh.mapper;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Schedule;

public interface ScheduleMapper {
	
	int insertSchedule(Schedule schedule);
	
	int updateSchedule(Schedule schedule);
	
	int deleteSchedule(int scheduleNo);
	
	int selectScheduleCount();
	
	Schedule selectSchedule(int scheduleNo);
	
	List<Schedule> selectMonthScheduleList(String month);
	
	List<Schedule> selectAllScheduleList(Map<String, Object> map);
}
