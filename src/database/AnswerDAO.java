package database;

import entity.Answer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/5
 * Description:
 * All rights reserved.
 */
public class AnswerDAO implements IAnswerDAO {
	@Override
	public int insert(Answer answer) {
		Connection connection = Util.getConnection();
		String sql = "INSERT INTO answer(content,userId,qId,anonymous) VALUES(?,?,?,?)";
		int id = 0;
		try {
			PreparedStatement statement = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS);
			statement.setString(1, answer.getContent());
			statement.setString(2, answer.getUserId());
			statement.setInt(3, answer.getQid());
			statement.setInt(4, answer.getAnonymous());
			statement.executeUpdate();
			ResultSet set = statement.getGeneratedKeys();
			set.next();
			id = set.getInt(1);
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return id;
	}

	@Override
	public boolean delete(Answer answer) {
		return false;
	}

	@Override
	public boolean update(Answer answer) {
		return false;
	}

	@Override
	public Answer select(int id) {
		return null;
	}

	@Override
	public List<Answer> getList(int qid) {
		return null;
	}
}
