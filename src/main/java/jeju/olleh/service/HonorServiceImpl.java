package jeju.olleh.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jeju.olleh.dao.HonorDAO;
import jeju.olleh.dto.Honor;


@Service
public class HonorServiceImpl implements HonorService {
	
	@Autowired
	private HonorDAO honorDAO;
	
	@Transactional
	@Override
	public void addHonor(Honor honor) {
		honorDAO.insertHonor(honor);
		
	}
	@Transactional
	@Override
	public void modifyHonor(int num, Honor honor) {
		honorDAO.updateHonor(honor);
		
	}
	
	@Transactional
	@Override
	public void removeHonor(int num) {
		honorDAO.deleteHonor(num);
		
	}

	@Override
	public int getHonorCount() {
		return honorDAO.selectHonorCount();
	}

	@Override
	public Honor getHonor(int num) {
		return honorDAO.selectHonor(num);
	}

	@Override
	public List<Honor> getHonorList(Map<String, Object> map) {
		return honorDAO.selectHonorList(map);
	}
	@Override
	public List<Honor> getAllHonorList() {
		return honorDAO.selectAllHonorList();
	}


	
	
}
