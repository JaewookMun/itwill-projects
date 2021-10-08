package jeju.olleh.service;

import java.util.List;

import jeju.olleh.dto.Program;

public interface ProgramService {
	
	/**
	 * DB에 단순 문자열로 저장된 Program 관련 정보를 웹문서에 표시하기 위해 <br>
	 * HTML 태그를 포함한 문자열로 전환된 정보를 가지고 있는 Program 객체 반환
	 * 
	 * @param programType
	 * @return
	 */
	Program getProgramInfo(int programType);
	List<Program> getProgramInfoList();
}
