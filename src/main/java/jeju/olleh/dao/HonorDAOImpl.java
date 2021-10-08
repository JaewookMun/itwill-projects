package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import jeju.olleh.dto.Honor;
import jeju.olleh.mapper.HonorMapper;


@Repository
public class HonorDAOImpl implements HonorDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertHonor(Honor honor) {
		System.out.println("HonorDao"+ honor.getNum());
		return sqlSession.getMapper(HonorMapper.class).insertHonor(honor);
	}

	@Override
	public int updateHonor(Honor honor) {
		return sqlSession.getMapper(HonorMapper.class).updateHonor(honor);
	}

	@Override
	public int deleteHonor(int num) {
		return sqlSession.getMapper(HonorMapper.class).deleteHonor(num);
	}

	@Override
	public int selectHonorCount() {
		return sqlSession.getMapper(HonorMapper.class).selectHonorCount();
	}

	@Override
	public Honor selectHonor(int num) {
		return sqlSession.getMapper(HonorMapper.class).selectHonor(num);
	}	

	@Override
	public List<Honor> selectHonorList(Map<String, Object> map) {
		return sqlSession.getMapper(HonorMapper.class).selectHonorList(map);
	}

	// 전체 리스트 반환
	@Override
	public List<Honor> selectAllHonorList() {
		return sqlSession.getMapper(HonorMapper.class).selectAllHonorList();
	}

}
