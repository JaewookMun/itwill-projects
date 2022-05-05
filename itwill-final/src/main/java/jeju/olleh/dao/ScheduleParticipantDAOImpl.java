package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jeju.olleh.dto.ParticipantMemberWithSchedule;
import jeju.olleh.dto.ScheduleParticipant;
import jeju.olleh.dto.ScheduleParticipantMember;
import jeju.olleh.mapper.ScheduleParticipantMapper;

@Repository
public class ScheduleParticipantDAOImpl implements ScheduleParticipantDAO {

	@Autowired
	private SqlSession sqlSession;
	
	
	@Override
	public int insertParticipant(ScheduleParticipant participant) {
		return sqlSession.getMapper(ScheduleParticipantMapper.class).insertParticipant(participant);
	}

	@Override
	public int deleteParticipant(Map<String, Object> map) {
		return sqlSession.getMapper(ScheduleParticipantMapper.class).deleteParticipant(map);
	}

	@Override
	public int updateParticipant(ScheduleParticipant participant) {
		return sqlSession.getMapper(ScheduleParticipantMapper.class).updateParticipant(participant);
	}

	@Override
	public ScheduleParticipantMember selectScheduleParticipant(Map<String, Object> map) {
		return sqlSession.getMapper(ScheduleParticipantMapper.class).selectScheduleParticipant(map);
	}

	@Override
	public List<ScheduleParticipantMember> selectScheduleParticipantInfoList(Map<String, Object> identifierMap) {
		return sqlSession.getMapper(ScheduleParticipantMapper.class).selectScheduleParticipantInfoList(identifierMap);
	}

	@Override
	public List<ParticipantMemberWithSchedule> selectScheduleParticipantsWithNo(int no) {
		return sqlSession.getMapper(ScheduleParticipantMapper.class).selectScheduleParticipantsWithNo(no);
	}

	

}
