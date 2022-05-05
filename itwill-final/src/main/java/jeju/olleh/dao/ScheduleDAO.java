package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Schedule;

public interface ScheduleDAO {
	
	int insertSchedule(Schedule schedule);
	
	int updateSchedule(Schedule schedule);
	
	int deleteSchedule(int scheduleNo);
	
	int selectScheduleCount();
	
	Schedule selectSchedule(int scheduleNo);
	
	List<Schedule> selectMonthScheduleList(String month);
	
	/**
	 * put key {@code startRow, endRow} for paging
	 * 
	 * @param map
	 * @return
	 */
	List<Schedule> selectAllScheduleList(Map<String, Object> map);
	
	
}
