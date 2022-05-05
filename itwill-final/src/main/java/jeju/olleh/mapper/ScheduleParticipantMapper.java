package jeju.olleh.mapper;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.ParticipantMemberWithSchedule;
import jeju.olleh.dto.ScheduleParticipant;
import jeju.olleh.dto.ScheduleParticipantMember;

public interface ScheduleParticipantMapper {
	int insertParticipant(ScheduleParticipant participant);
	
	int deleteParticipant(Map<String, Object> map);

	int updateParticipant(ScheduleParticipant participant);
	
	ScheduleParticipantMember selectScheduleParticipant(Map<String, Object> map);
	
	List<ScheduleParticipantMember> selectScheduleParticipantInfoList(Map<String, Object> map);
	
	List<ParticipantMemberWithSchedule> selectScheduleParticipantsWithNo(int no);
}
