package jeju.olleh.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jeju.olleh.dto.FileBoard;
import jeju.olleh.mapper.FileBoardMapper;

@Repository
public class FileBoardDAOImpl implements FileBoardDAO{

	@Autowired
	SqlSession sqlSession;
	
	@Override
	public int insertFileBoard(FileBoard fileBoard) {
		 return sqlSession.getMapper(FileBoardMapper.class).insertFileBoard(fileBoard);
	}

	@Override
	public int deleteFileBoard(int boardNo) {
		return sqlSession.getMapper(FileBoardMapper.class).deleteFileBoard(boardNo);
	}
	
	@Override
	public int updateFileBoard(FileBoard fileBoard) {
		return sqlSession.getMapper(FileBoardMapper.class).updateFileBoard(fileBoard);
	}

	@Override
	public FileBoard selectFileBoard(int no) {
		return sqlSession.getMapper(FileBoardMapper.class).selectFileBoard(no);
	}


	@Override
	public FileBoard selectFileBoardByBoardNo(int boardNo) {
		return sqlSession.getMapper(FileBoardMapper.class).selectFileBoardByBoardNo(boardNo);
	}
	
	@Override
	public List<FileBoard> selectFileBoardList(int boardNo) {
		return sqlSession.getMapper(FileBoardMapper.class).selectFileBoardList(boardNo);
	}



}
