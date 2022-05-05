package jeju.olleh.service;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import jeju.olleh.dao.FaqQuestionDAO;
import jeju.olleh.dto.FaqQuestion;

@Service
public class FaqQuestionServiceImpl implements FaqQuestionService {
	
	@Autowired
	private FaqQuestionDAO faqQuestionDAO;
	
	@Transactional
	@Override
	public void addFaqQuestion(FaqQuestion faqQuestion) {
		faqQuestionDAO.insertFaqQuestion(faqQuestion);
		
	}
	@Transactional
	@Override
	public void modifyFaqQuestion(FaqQuestion faqQuestion) {
		faqQuestionDAO.updateFaqQuestion(faqQuestion);
		
	}
	
	@Transactional
	@Override
	public void removeFaqQuestion(int num) {
		faqQuestionDAO.deleteFaqQuestion(num);
		
	}

	@Override
	public int getFaqQuestionCount() {
		return faqQuestionDAO.selectFaqQuestionCount();
	}

	@Override
	public FaqQuestion getFaqQuestion(int num) {
		return faqQuestionDAO.selectFaqQuestion(num);
	}

	@Override
	public List<FaqQuestion> getFaqQuestionList(Map<String, Object> map) {
		return faqQuestionDAO.selectFaqQuestionList(map);
	}
	
	//관리자
	@Override
	public List<FaqQuestion> adminFaqQuestList() {
		return faqQuestionDAO.adminFaqQuestList();
	}
	
	// 아이디로 글 찾기
	@Override
	public List<FaqQuestion> getId(String id) {
		return faqQuestionDAO.selectIdQuestion(id);
	}
	


	
	
}
