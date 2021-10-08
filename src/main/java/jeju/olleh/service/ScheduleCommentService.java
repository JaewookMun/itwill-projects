package jeju.olleh.service;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.ScheduleComment;
import jeju.olleh.dto.ScheduleCommentMember;
import jeju.olleh.dto.ScheduleCommentMemberWitSchedule;
import jeju.olleh.exception.NullContentException;

public interface ScheduleCommentService {
	
	/**
	 * 메소드 내부에서 시퀀스, {@code sch_comment_seq},의 {@code nextval}을 구하여
	 * comment 객체 수정 후 schedule_comment 테이블에 객체를 추가
	 * 
	 * @param comment
	 * @throws NullContentException 
	 */
	void addScheduleCommentInfo(ScheduleComment comment) throws NullContentException;
	
	/**
	 * {@code schedule_key}<br>
	 * {@code comment_no}
	 * 
	 * @param map
	 * @return
	 */
	void removeScheduleCommentInfo(Map<String, Object> map);
	
	void modifyScheduleCommentInfo(ScheduleComment comment);
	
	/**
	 * '{@code \n}' to '{@code <br>}태그'
	 * 
	 */
	List<ScheduleCommentMember> getScheduleCommentInfoList(int schedulekey);
	
	/**
	 * commentCode=회원번호
	 * 
	 * @param commentCode
	 * @return
	 */
	List<ScheduleCommentMemberWitSchedule> getMyScheduleCommentInfoList(int no);
	
}
