package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.ScheduleComment;
import jeju.olleh.dto.ScheduleCommentMember;
import jeju.olleh.dto.ScheduleCommentMemberWitSchedule;

public interface ScheduleCommentDAO {
	int insertComment(ScheduleComment comment);
	
	/**
	 * {@code schedule_key}<br>
	 * {@code comment_no}
	 * 
	 * @param map
	 * @return
	 */
	int deleteComment(Map<String, Object> map);
	
	int updateComment(ScheduleComment comment);
	
	/**
	 * 다음 시퀀스 번호 생성 및 반환
	 * 
	 * execute sch_comment_seq.nextval and return it
	 * 
	 * @return
	 */
	int selectNextSeqNo();
	
	List<ScheduleCommentMember> selectCommentList(int scheduleKey);
	
	List<ScheduleCommentMemberWitSchedule> selectMyCommentList(int no);
	
}
