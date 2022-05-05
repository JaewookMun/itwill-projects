package jeju.olleh.mapper;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Honor;

public interface HonorMapper {
	
	int insertHonor(Honor honor);
	int updateHonor(Honor honor);
	int deleteHonor(int num);
	int selectHonorCount();
	Honor selectHonor(int num);
	List<Honor> selectHonorList(Map<String, Object> map);
	List<Honor> selectAllHonorList();
	
}
