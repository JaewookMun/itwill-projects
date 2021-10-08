package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.ParticipantMemberWithSchedule;
import jeju.olleh.dto.ScheduleParticipant;
import jeju.olleh.dto.ScheduleParticipantMember;

public interface ScheduleParticipantDAO {
	
	int insertParticipant(ScheduleParticipant participant);
	
	/**
	 * input {@code scheduleKey} and {@code participantCode}
	 * 
	 * @param map
	 * @return
	 */
	int deleteParticipant(Map<String, Object> map);

	int updateParticipant(ScheduleParticipant participant);
	
	/**
	 * input {@code scheduleKey} and {@code participantCode}
	 * 
	 * @param map
	 * @return
	 */
	ScheduleParticipantMember selectScheduleParticipant(Map<String, Object> map);
	
	/**
	 * schedule key [{@code scheduleKey}] -> 스케쥴에대한 참가자 목록<br>
	 * 또는
	 * participant code(회원번호) [{@code particitpantCode}]- > 해당 회원의 스케쥴 참가정보 출력
	 * 
	 * 
	 * @param identifierMap
	 * @return
	 */
	List<ScheduleParticipantMember> selectScheduleParticipantInfoList(Map<String, Object> identifierMap);
	
	List<ParticipantMemberWithSchedule> selectScheduleParticipantsWithNo(int no);
	
}
