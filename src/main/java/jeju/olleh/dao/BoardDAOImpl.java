package jeju.olleh.dao;

import jeju.olleh.dto.Board;
import jeju.olleh.dto.BoardForm;
import jeju.olleh.dto.BoardPage;
import jeju.olleh.mapper.BoardMapper;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class BoardDAOImpl implements BoardDAO{

	@Autowired
    private SqlSession sqlSession;

    @Override
    public int insertBoard(Board board) {
        sqlSession.getMapper(BoardMapper.class).insertBoard(board);
        System.out.println("BoardDao " + board.getNo());
        return board.getNo();
        
    }

    @Override
    public int updateBoard(BoardForm boardForm) {
        return sqlSession.getMapper(BoardMapper.class).updateBoard(boardForm);
    }

    @Override
    public int deleteBoard(int boardNo) {
        return sqlSession.getMapper(BoardMapper.class).deleteBoard(boardNo);
    }

	@Override
	public int getBoardCount(int category) {
		 return sqlSession.getMapper(BoardMapper.class).selectBoardListCount(category);
	}
	
    @Override
    public int getBoardCount(BoardPage boardPage) {
    	return sqlSession.getMapper(BoardMapper.class).getBoardCountSearch(boardPage);
    }
    
    @Override
    public BoardForm selectBoard(int boardNo) {
        return sqlSession.getMapper(BoardMapper.class).selectBoard(boardNo);
    }
    


    @Override
    public List<BoardForm> selectBoardList(int category) {
        return sqlSession.getMapper(BoardMapper.class).selectBoardList(category);
    }
    
    @Override
    public List<BoardForm> selectBoardNoticeList() {
        return sqlSession.getMapper(BoardMapper.class).selectBoardNoticeList();
    }

	@Override
	public List<BoardForm> getBoradList(Map<String, Object> map) {
		var temp = map.get("searchText");
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		System.out.println(temp);
		System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~");
		return sqlSession.getMapper(BoardMapper.class).getBoradList(map);
	}


}
