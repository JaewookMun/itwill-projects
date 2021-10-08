package jeju.olleh.mapper;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.FaqQuestion;
import jeju.olleh.dto.Member;

public interface FaqQuestionMapper {
	
	int insertFaqQuestion(FaqQuestion faqQuestion);
	int updateFaqQuestion(FaqQuestion faqQuestion);
	int deleteFaqQuestion(int num);
	int selectFaqQuestionCount();
	FaqQuestion selectFaqQuestion(int num);
	List<FaqQuestion> adminFaqQuestList();
	List<FaqQuestion> selectIdQuestion(String id);
	List<FaqQuestion> selectFaqQuestionList(Map<String, Object>map);
}
