package jeju.olleh.dao;

import java.util.List;

import jeju.olleh.dto.Program;

public interface ProgramDAO {
	Program selectProgramInfo(int programType);
	List<Program> selectProgramList();
}
