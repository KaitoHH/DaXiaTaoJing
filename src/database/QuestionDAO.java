package database;

import Entity.Question;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
	public Question select(int id) {
		return null;
	}

	@Override
	public List<Question> getList() {
		List<Question> list = new ArrayList();
		Connection connection = Util.getConnection();
		String sql = "SELECT * FROM question";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			ResultSet set = statement.executeQuery();
			while (set.next()) {
				Question question = new Question();
				question.setTittle(set.getString("tittle"));
				question.setqType(set.getInt("type"));
				question.setContent(set.getString("content"));
				question.setPay(set.getInt("pay"));
				question.setUserId(set.getString("userId"));
				list.add(question);
			}
			statement.close();
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
