package jeju.olleh.mapper;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.ScheduleComment;
import jeju.olleh.dto.ScheduleCommentMember;
import jeju.olleh.dto.ScheduleCommentMemberWitSchedule;

public interface ScheduleCommentMapper {
	int insertComment(ScheduleComment comment);
	
	int deleteComment(Map<String, Object> map);
	
	int updateComment(ScheduleComment comment);
	
	int selectNextSeqNo();
	
	List<ScheduleCommentMember> selectCommentList(int scheduleKey);
	
	List<ScheduleCommentMemberWitSchedule> selectMyCommentList(int no);
	
}
