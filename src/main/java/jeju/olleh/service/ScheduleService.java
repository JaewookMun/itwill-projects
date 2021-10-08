package jeju.olleh.service;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Schedule;
import jeju.olleh.exception.NotValidInputException;

public interface ScheduleService {
	
	void addSchedule(Schedule schedule);
	
	void modifySchedule(Schedule schedule);
	
	void removeSchedule(int scheduleNo);
	
	int getScheduleCount();
	
	/**
	 * {@code StringConverter}를 통해서 schedule_content 출력형태 변환 후 출력
	 * 
	 * @param scheduleNo
	 * @return
	 */
	Schedule getSchedule(int scheduleNo);
	
	/**
	 * 'yyyy-MM' 형태의 문자열로 값을 전달받아 해당하는 schedule 정보를 리스트 객체로 반환
	 *  {@code Null} 혹은 {@code Null String}으로 전달된 경우 현재 월 정보를 기준으로 리스트 반환
	 *  정해진 규칙에서 벗어난 경우 {@code NotValidInputException} 예외 발생
	 */
	List<Schedule> getMonthScheduleList(String month) throws NotValidInputException;
	
	/**
	 * StartRow
	 * EndRow
	 * 
	 * @param map
	 * @return
	 */
	List<Schedule> getAllScheduleList(Map<String, Object> map);
}
