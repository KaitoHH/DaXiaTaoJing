package database;

import entity.Question;

import java.sql.*;
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
	public int insert(Question question) {
		Connection connection = Util.getConnection();
		String sql = "INSERT INTO question(tittle,type,content,pay,userId) VALUES(?,?,?,?,?)";
		int qid = 0;
		try {
			PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			statement.setString(1, question.getTittle());
			statement.setInt(2, question.getqType());
			statement.setString(3, question.getContent());
			statement.setInt(4, question.getPay());
			statement.setString(5, question.getUserId());
			statement.executeUpdate();
			ResultSet keys = statement.getGeneratedKeys();
			keys.next();
			qid = keys.getInt(1);
			new TagDAO().insertRelation(qid, question.getTag());
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
		return qid;
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
		Question question = null;
		Connection connection = Util.getConnection();
		String sql = "SELECT * FROM question WHERE id = ?";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, id);
			ResultSet set = statement.executeQuery();
			if (set.next()) {
				question = new Question();
				question.setId(set.getInt("id"));
				question.setTittle(set.getString("tittle"));
				question.setqType(set.getInt("type"));
				question.setContent(set.getString("content"));
				question.setPay(set.getInt("pay"));
				question.setUserId(set.getString("userId"));
				question.setTag(new TagDAO().getAllTag(question.getId()));
			}
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
		return question;
	}

	@Override
	public List<Question> getList(int type) {
		List<Question> list = new ArrayList();
		Connection connection = Util.getConnection();
		String sql = "SELECT * FROM question WHERE type = ?";
		System.out.println(sql);
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, type);
			ResultSet set = statement.executeQuery();
			while (set.next()) {
				Question question = new Question();
				question.setId(set.getInt("id"));
				question.setTittle(set.getString("tittle"));
				//question.setqType(set.getInt("type"));
				//question.setContent(set.getString("content"));
				question.setPay(set.getInt("pay"));
				//question.setUserId(set.getString("userId"));
				question.setTag(new TagDAO().getAllTag(question.getId()));
				list.add(question);
			}
			statement.close();
			return list;
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
