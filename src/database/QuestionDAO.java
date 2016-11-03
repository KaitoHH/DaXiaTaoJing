package database;

import Entity.Question;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/3
 * Description:
 * All rights reserved.
 */
public class QuestionDAO implements IQuestionDAO {

	@Override
	public boolean insert(Question question) {
		Connection connection = Util.getConnection();
		String sql = "INSERT INTO question(tittle,type,content,pay,userId) VALUES(?,?,?,?,?)";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, question.getTittle());
			statement.setInt(2, question.getqType());
			statement.setString(3, question.getContent());
			statement.setInt(4, question.getPay());
			statement.setString(5, question.getUserId());
			statement.executeUpdate();
			statement.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return true;
	}

	@Override
	public boolean delete(Question question) {
		return false;
	}

	@Override
	public boolean update(Question question) {
		return false;
	}

	@Override
	public Question select(String id) {
		return null;
	}
}
