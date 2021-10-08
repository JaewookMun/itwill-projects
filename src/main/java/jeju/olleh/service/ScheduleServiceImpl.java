package jeju.olleh.service;

import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.regex.Pattern;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jeju.olleh.dao.ScheduleDAO;
import jeju.olleh.dto.Schedule;
import jeju.olleh.exception.NotValidInputException;
import jeju.olleh.util.StringConverter;

@Service
public class ScheduleServiceImpl implements ScheduleService {

	@Autowired
	private ScheduleDAO scheduleDAO;
	
	@Autowired
	private StringConverter converter;
	
	@Override
	public void addSchedule(Schedule schedule) {

		// temp
		scheduleDAO.insertSchedule(schedule);
		
	}

	@Override
	public void modifySchedule(Schedule schedule) {
		
		// temp
		scheduleDAO.updateSchedule(schedule);
	}

	@Override
	public void removeSchedule(int scheduleNo) {
		// temp
		scheduleDAO.deleteSchedule(scheduleNo);
	}

	@Override
	public int getScheduleCount() {
		// temp
		return scheduleDAO.selectScheduleCount();
	}
	
	@Override
	public Schedule getSchedule(int scheduleNo) {
		
		Schedule schedule=scheduleDAO.selectSchedule(scheduleNo);
		// 작성 내용이 없을 시 컨버터 사용없이 바로 제공
		if(schedule.getScheduleContent()==null || schedule.getScheduleContent().equals("")) {
			return schedule;
		}
		
		schedule.setScheduleContent(converter.textRendering(schedule.getScheduleContent(), null, "<p>"));
		
		return schedule;
	}

	@Override
	public List<Schedule> getMonthScheduleList(String month) throws NotValidInputException {
		// 맞는지 확인
		String regDate="^(19|20)\\d{2}-(0[1-9]|1[0-2])";
		
		if(month==null || month.equals("")) {
			month=Calendar.getInstance().get(Calendar.YEAR)+"-"+(Calendar.getInstance().get(Calendar.MONTH)+1);
			
		} else if (!Pattern.matches(regDate, month.replace(" ", ""))) {
			throw new NotValidInputException("입력된 매개변수의 값이 정해진 규칙에서 벗어납니다.");
		}
		
		return scheduleDAO.selectMonthScheduleList(month.replace(" ", ""));
	}

	@Override
	public List<Schedule> getAllScheduleList(Map<String, Object> map) {
		/*
		int scheduleCount=scheduleDAO.selectScheduleCount();
		int pageNum=(int) map.get("pageNum");
		
		Pager pager=new Pager(pageNum, scheduleCount, 10, 5);
		map.put("startRow", pager.getStartRow());
		map.put("endRow", pager.getEndRow());
		*/
		return scheduleDAO.selectAllScheduleList(map);
	}

	
}
