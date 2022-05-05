package jeju.olleh.mapper;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Festival;

public interface FestivalMapper {
	int insertFestival(Festival festival);
	Festival selectFestival(int no);
	List<Festival> selectFestivalList();
	int deleteFestival(Festival festival);
	int selectFestivalCount();
	List<Festival> selectPageList(Map<String, Object> map);
	
}
