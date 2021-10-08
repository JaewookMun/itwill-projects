package jeju.olleh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jeju.olleh.dto.Program;
import jeju.olleh.mapper.ProgramMapper;

@Repository
public class ProgramDAOImpl implements ProgramDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public Program selectProgramInfo(int programType) {
		return sqlSession.getMapper(ProgramMapper.class).selectProgramInfo(programType);
	}

	@Override
	public List<Program> selectProgramList() {
		return sqlSession.getMapper(ProgramMapper.class).selectProgramList();
	}
	
}
