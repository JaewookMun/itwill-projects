package jeju.olleh.mapper;

import jeju.olleh.dto.Board;
import jeju.olleh.dto.BoardForm;
import jeju.olleh.dto.BoardPage;

import java.util.List;
import java.util.Map;

public interface BoardMapper {

    int insertBoard(Board board);
    int updateBoard(BoardForm board);
    int deleteBoard(int boardNo);
    
    int selectBoardListCount(int category);
    int getBoardCountSearch(BoardPage boardPage);
    
    BoardForm selectBoard(int boardNo);
    List<BoardForm> selectBoardList(int category);
    List<BoardForm> selectBoardNoticeList();
    
    //category, startRow, endRow
    List<BoardForm> getBoradList(Map<String, Object> map);
}
