package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.Honor;

public interface HonorDAO {
	int insertHonor(Honor honer);
	int updateHonor(Honor honor);
	int deleteHonor(int num);
	int selectHonorCount();
	Honor selectHonor(int num);
	List<Honor> selectHonorList(Map<String, Object> map);
	List<Honor> selectAllHonorList();
}
