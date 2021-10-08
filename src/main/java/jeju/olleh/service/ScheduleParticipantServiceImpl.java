package jeju.olleh.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jeju.olleh.dao.ScheduleParticipantDAO;
import jeju.olleh.dto.ParticipantMemberWithSchedule;
import jeju.olleh.dto.ScheduleParticipant;
import jeju.olleh.dto.ScheduleParticipantMember;
import jeju.olleh.exception.ExistingParticipantException;

@Service
public class ScheduleParticipantServiceImpl implements ScheduleParticipantService {

	@Autowired
	private ScheduleParticipantDAO scheduleParticipantDAO;
	
	@Override
	public void addParticipantInfo(ScheduleParticipant participant) throws ExistingParticipantException {
		
		Map<String, Object> infoMap=new HashMap<String, Object>();
		infoMap.put("scheduleKey", participant.getScheduleKey());
		infoMap.put("participantCode", participant.getParticipantCode());
		
		// 주어진 정보쌍으로 이미 신청한 참가자 정보를 확인한 경우
		if(scheduleParticipantDAO.selectScheduleParticipant(infoMap)!=null) {
			throw new ExistingParticipantException("이미 해당 프로그램에 참가신청을 완료하였습니다.", participant.getScheduleKey());
		}
		
		scheduleParticipantDAO.insertParticipant(participant);
	}

	@Override
	public void removeParticipantInfo(Map<String, Object> map) {
		// temp
		scheduleParticipantDAO.deleteParticipant(map);
	}

	@Override
	public void modifyParticipantInfo(ScheduleParticipant participant) {
		// temp
		scheduleParticipantDAO.updateParticipant(participant);
	}
	
	/**
	 * Map information configuration<br>
	 * schedule key [{@code scheduleKey}] -> 스케쥴에대한 참가자 목록<br>
	 * <br>
	 * {@code 또는}
	 * participant code(회원번호) [{@code particitpantCode}]- > 해당 회원의 스케쥴 참가정보 출력
	 * 
	 */
	@Override
	public List<ScheduleParticipantMember> getScheduleParticipantInfoList(Map<String, Object> identifierMap) {
		// temp
		
		return scheduleParticipantDAO.selectScheduleParticipantInfoList(identifierMap);
	}

	@Override
	public List<ParticipantMemberWithSchedule> getScheduleParticipantsWithNo(int no) {
		return scheduleParticipantDAO.selectScheduleParticipantsWithNo(no);
	}

}
