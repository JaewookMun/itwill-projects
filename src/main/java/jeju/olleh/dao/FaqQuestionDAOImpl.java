package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import jeju.olleh.dto.FaqQuestion;
import jeju.olleh.mapper.FaqQuestionMapper;






@Repository
public class FaqQuestionDAOImpl implements FaqQuestionDAO{
	
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int insertFaqQuestion(FaqQuestion faqQuestion) {
		return sqlSession.getMapper(FaqQuestionMapper.class).insertFaqQuestion(faqQuestion);
	}

	@Override
	public int updateFaqQuestion(FaqQuestion faqQuestion) {
		return sqlSession.getMapper(FaqQuestionMapper.class).updateFaqQuestion(faqQuestion);
	}

	@Override
	public int deleteFaqQuestion(int num) {
		return sqlSession.getMapper(FaqQuestionMapper.class).deleteFaqQuestion(num);
	}

	@Override
	public int selectFaqQuestionCount() {
		return sqlSession.getMapper(FaqQuestionMapper.class).selectFaqQuestionCount();
	}

	@Override
	public FaqQuestion selectFaqQuestion(int num) {
		return sqlSession.getMapper(FaqQuestionMapper.class).selectFaqQuestion(num);
	}

	@Override
	public List<FaqQuestion> selectFaqQuestionList(Map<String, Object> map) {
		return sqlSession.getMapper(FaqQuestionMapper.class).selectFaqQuestionList(map);
	}

	@Override
	public List<FaqQuestion> adminFaqQuestList() {
		return sqlSession.getMapper(FaqQuestionMapper.class).adminFaqQuestList();
	}

	@Override
	public List<FaqQuestion> selectIdQuestion(String id) {
		return sqlSession.getMapper(FaqQuestionMapper.class).selectIdQuestion(id);
	}

	
	



	

}
