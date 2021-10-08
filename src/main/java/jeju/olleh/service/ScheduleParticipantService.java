package jeju.olleh.service;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.ParticipantMemberWithSchedule;
import jeju.olleh.dto.ScheduleParticipant;
import jeju.olleh.dto.ScheduleParticipantMember;
import jeju.olleh.exception.ExistingParticipantException;

public interface ScheduleParticipantService {
	
	void addParticipantInfo(ScheduleParticipant participant) throws ExistingParticipantException;
	
	/**
	 * Map - 스케쥴정보와 회원정보 저장
	 * 
	 * @param map
	 */
	void removeParticipantInfo(Map<String, Object> map);
	
	void modifyParticipantInfo(ScheduleParticipant participant);
	
	
	/**
	 * schedule key [{@code scheduleKey}] -> 스케쥴에대한 참가자 목록<br>
	 * participant code(회원번호) [{@code particitpantCode}]- > 해당 회원의 스케쥴 참가정보 출력
	 * 
	 * 
	 * @param identifierMap
	 * @return
	 */
	List<ScheduleParticipantMember> getScheduleParticipantInfoList(Map<String, Object> identifierMap);
	
	List<ParticipantMemberWithSchedule> getScheduleParticipantsWithNo(int no);
}
