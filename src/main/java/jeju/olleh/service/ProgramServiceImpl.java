package jeju.olleh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jeju.olleh.dao.ProgramDAO;
import jeju.olleh.dto.Program;
import jeju.olleh.util.StringConverter;

@Service
public class ProgramServiceImpl implements ProgramService{
	@Autowired
	private ProgramDAO programDAO;
	
	@Autowired
	private StringConverter converter;
	
	
	@Override
	public Program getProgramInfo(int programType) {
		Program programInfo=programDAO.selectProgramInfo(programType);
			
		String description = programInfo.getProgramDescription();
		String content = programInfo.getProgramContent();
		String instruction = programInfo.getProgramInstruction();

		// '아카자봉과 함께 걷기' 또는 '역방향 걷기'일 경우
		if(programType==2 || programType ==3) {
			programInfo.setProgramDescription(converter.textRendering(description, "<h3>", "<p>"));
			programInfo.setProgramContent(converter.textRendering(content, null, "<p>"));
			programInfo.setProgramInstruction(converter.textRendering(instruction, "<span>", "<li>"));
		
		// 클린올레 일경우
		} else if(programType==4) {
			programInfo.setProgramDescription(converter.textRendering(description, "<h3>", "<p>"));
			programInfo.setProgramDescription(converter.textRendering(description, "<h3>", "<p>"));
			
		} else {
			if(content !=null && !content.equals("")) {
				programInfo.setProgramContent(converter.enterToBrTag(content));
			}
		}
		
		return programInfo;
	}

	@Override
	public List<Program> getProgramInfoList() {
		return programDAO.selectProgramList();
	}

}
