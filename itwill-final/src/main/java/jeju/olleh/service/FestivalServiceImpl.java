package jeju.olleh.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import jeju.olleh.dao.FestivalDAO;
import jeju.olleh.dto.Festival;

@Service
public class FestivalServiceImpl implements FestivalService {
	
	@Autowired
	private FestivalDAO festivalDAO;

	@Override
	public void addFestival(Festival festival) {
		festivalDAO.insertFestival(festival);
		System.out.println(festival.getNo()+"번 저장완료");
	}

	@Override
	public Festival getFestival(int no) {
		System.out.println(no+"번 검색 완료");
		return festivalDAO.selectFestival(no);
		
	}

	@Override
	public List<Festival> getFestivalList() {
		return festivalDAO.selectFestivalList();
	}

	@Override
	public void removeFestival(Festival festival) {
		festivalDAO.deleteFestival(festival);	
	}

	@Override
	public int getFestivalCount() {
		return festivalDAO.selectFestivalCount();
	}

	@Override
	public List<Festival> getFestivalPageList(Map<String, Object> map) {
		return festivalDAO.selectPageList(map);
	}
}
