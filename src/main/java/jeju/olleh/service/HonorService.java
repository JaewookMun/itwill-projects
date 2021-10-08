package jeju.olleh.service;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Honor;

public interface HonorService {

	void addHonor(Honor honor);
	void modifyHonor(int num, Honor honor);
	void removeHonor(int num);
	
	int getHonorCount();
	
	Honor getHonor(int num);
	List<Honor> getHonorList(Map<String, Object> map);
	
	List<Honor> getAllHonorList();
	
	
}
