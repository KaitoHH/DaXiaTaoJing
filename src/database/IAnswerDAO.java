package database;

import entity.Answer;
import entity.Question;

import java.util.List;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/5
 * Description:
 * All rights reserved.
 */
public interface IAnswerDAO {
	int insert(Answer answer);

	boolean delete(Answer answer);

	boolean update(Answer answer);

	Answer select(int id);

	List<Answer> getList(int qid);
}
