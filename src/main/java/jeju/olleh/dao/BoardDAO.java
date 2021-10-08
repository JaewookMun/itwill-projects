package jeju.olleh.dao;

import jeju.olleh.dto.Board;
import jeju.olleh.dto.BoardForm;
import jeju.olleh.dto.BoardPage;

import java.util.List;
import java.util.Map;

public interface BoardDAO {

    int insertBoard(Board board);
    int updateBoard(BoardForm board);
    int deleteBoard(int boardNo);
    int getBoardCount(int category);
    int getBoardCount(BoardPage boardPage);
    
    BoardForm selectBoard(int boardNo);
    List<BoardForm> selectBoardList(int category);
    List<BoardForm> selectBoardNoticeList();
    
    //category, startRow, endRow
    List<BoardForm> getBoradList(Map<String, Object> map);
}
