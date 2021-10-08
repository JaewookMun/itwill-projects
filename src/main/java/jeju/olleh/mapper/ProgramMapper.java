package jeju.olleh.mapper;

import java.util.List;

import jeju.olleh.dto.Program;

public interface ProgramMapper {
	Program selectProgramInfo(int programType);
	List<Program> selectProgramList();
}
