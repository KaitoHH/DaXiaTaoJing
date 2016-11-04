package database;

import entity.Question;

import java.util.List;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/3
 * Description:
 * All rights reserved.
 */
public interface IQuestionDAO {
	public boolean insert(Question question);

	public boolean delete(Question question);

	public boolean update(Question question);

	public Question select(int id);

	public List<Question> getList();
}
