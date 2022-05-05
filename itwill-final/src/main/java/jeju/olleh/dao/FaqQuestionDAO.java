package jeju.olleh.dao;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.FaqQuestion;

public interface FaqQuestionDAO {
	int insertFaqQuestion(FaqQuestion faqQuestion);
	int updateFaqQuestion(FaqQuestion faqQuestion);
	int deleteFaqQuestion(int num);
	int selectFaqQuestionCount();
	List<FaqQuestion> selectIdQuestion(String id);
	FaqQuestion selectFaqQuestion(int num);
	List<FaqQuestion> adminFaqQuestList();
	List<FaqQuestion> selectFaqQuestionList(Map<String, Object>map);
}
