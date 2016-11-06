package service;

import entity.Question;
import org.json.JSONArray;
import org.json.JSONObject;

import java.util.List;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/6
 * Description:
 * All rights reserved.
 */
public class JsonService {
	static final String[] type = new String[]{"","文科", "理科", "工科", "其他"};
	public static String jsonQuestionQuery(List<Question> list) {
		JSONArray array = new JSONArray();
		for (Question question : list) {
			JSONObject q = new JSONObject();
			q.put("id", question.getId());
			q.put("looktimes", 0);
			q.put("tittle", question.getTittle());
			q.put("subject", type[question.getqType()]);
			q.put("numberOfAnswers", question.getAnswerCnt());
			q.put("numberOfFollowers", 0);
			array.put(q);
		}
		JSONObject object = new JSONObject();
		object.put("data", array);
		return object.toString();
	}
}
