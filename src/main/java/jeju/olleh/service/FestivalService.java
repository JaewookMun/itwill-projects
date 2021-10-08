package jeju.olleh.service;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Festival;

public interface FestivalService {
	
	void addFestival(Festival festival);
	Festival getFestival(int no);
	List<Festival> getFestivalList();
	void removeFestival(Festival festival);
	
	int getFestivalCount();
	List<Festival> getFestivalPageList(Map<String , Object> map);
}
