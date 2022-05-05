package jeju.olleh.service;

import java.util.List;
import java.util.Map;

import jeju.olleh.dto.FaqQuestion;
import jeju.olleh.dto.Member;


public interface FaqQuestionService {
	void addFaqQuestion(FaqQuestion faqQuestion);
	void modifyFaqQuestion(FaqQuestion faqQuestion);
	void removeFaqQuestion(int num);
	int getFaqQuestionCount();
	List<FaqQuestion> getId(String id);
	FaqQuestion getFaqQuestion(int num);
	List<FaqQuestion> adminFaqQuestList();
	List<FaqQuestion> getFaqQuestionList(Map<String, Object> map);
}
