package jeju.olleh.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jeju.olleh.dao.ScheduleCommentDAO;
import jeju.olleh.dto.ScheduleComment;
import jeju.olleh.dto.ScheduleCommentMember;
import jeju.olleh.dto.ScheduleCommentMemberWitSchedule;
import jeju.olleh.exception.NullContentException;
import jeju.olleh.util.StringConverter;

@Service
public class ScheduleCommentServiceImpl implements ScheduleCommentService {

	@Autowired
	private ScheduleCommentDAO scheduleCommentDAO;
	
	@Autowired
	private StringConverter converter;
	
	
	@Override
	public void addScheduleCommentInfo(ScheduleComment comment) throws NullContentException {
		if(comment.getCommentContent()==null || comment.getCommentContent().equals("")) {
			throw new NullContentException("댓글 작성을 위해서는 내용입력이 필요합니다.");
		}
		
		int nextSeq=scheduleCommentDAO.selectNextSeqNo();
		
		comment.setCommentNo(nextSeq);
		
		scheduleCommentDAO.insertComment(comment);
		
	}

	@Override
	public void removeScheduleCommentInfo(Map<String, Object> map) {
		// temp
		scheduleCommentDAO.deleteComment(map);
	}

	@Override
	public void modifyScheduleCommentInfo(ScheduleComment comment) {
		// temp
		scheduleCommentDAO.updateComment(comment);
	}

	
	@Override
	public List<ScheduleCommentMember> getScheduleCommentInfoList(int schedulekey) {
		List<ScheduleCommentMember> scheduleCommentList=scheduleCommentDAO.selectCommentList(schedulekey);
		
		for(ScheduleCommentMember commentMember : scheduleCommentList) {
			ScheduleComment comment=commentMember.getComment();
			
			String convertedContent=converter.enterToBrTag(comment.getCommentContent());
			comment.setCommentContent(convertedContent);
			commentMember.setComment(comment);
		}
		
		return scheduleCommentList;
	}

	@Override
	public List<ScheduleCommentMemberWitSchedule> getMyScheduleCommentInfoList(int no) {
		return scheduleCommentDAO.selectMyCommentList(no);
	}

	

}
