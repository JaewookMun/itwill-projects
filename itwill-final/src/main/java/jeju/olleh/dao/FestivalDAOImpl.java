package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jeju.olleh.dto.Festival;
import jeju.olleh.mapper.FestivalMapper;

@Repository
public class FestivalDAOImpl implements FestivalDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertFestival(Festival festival) {
		return sqlSession.getMapper(FestivalMapper.class).insertFestival(festival);
	}

	@Override
	public Festival selectFestival(int no) {
		return sqlSession.getMapper(FestivalMapper.class).selectFestival(no);
	}

	@Override
	public List<Festival> selectFestivalList() {
		return sqlSession.getMapper(FestivalMapper.class).selectFestivalList();
	}

	@Override
	public int deleteFestival(Festival festival) {
		return sqlSession.getMapper(FestivalMapper.class).deleteFestival(festival);
	}

	@Override
	public int selectFestivalCount() {
		return sqlSession.getMapper(FestivalMapper.class).selectFestivalCount();
	}

	@Override
	public List<Festival> selectPageList(Map<String, Object> map) {
		return sqlSession.getMapper(FestivalMapper.class).selectPageList(map);
	}
	
}
