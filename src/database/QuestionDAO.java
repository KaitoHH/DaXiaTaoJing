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

	boolean containTag;

	@Override
	public int insert(Question question) {
		Connection connection = Util.getConnection();
		String sql = "INSERT INTO question(tittle,type,content,pay,userId,puserId) VALUES(?,?,?,?,?,?)";
		int qid = 0;
		try {
			PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			statement.setString(1, question.getTittle());
			statement.setInt(2, question.getqType());
			statement.setString(3, question.getContent());
			statement.setInt(4, question.getPay());
			statement.setString(5, question.getUserId());
			statement.setString(6, question.getPuserId());
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
		containTag = true;
		List<Question> list = new ArrayList();
		Connection connection = Util.getConnection();
		String sql = "SELECT * FROM question WHERE type = ? AND puserId = \"\"";
		System.out.println(sql);
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, type);
			ResultSet set = statement.executeQuery();
			while (set.next()) {
				list.add(setBasic(set));
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

	public List<Question> getAskList(String userId, int pageSize, int pageId) {
		String sql = "SELECT * FROM question WHERE userId = ? LIMIT " + pageId * pageSize + "," + pageSize;
		return getUserList(sql, userId);
	}

	public int getAskListCount(String userId) {
		String sql = "SELECT COUNT(*) FROM question WHERE userId = ?";
		return getUserListCount(sql, userId);
	}

	public List<Question> getAnswerList(String userId, int pageSize, int pageId) {
		String sql = "SELECT * FROM question JOIN answer ON question.id=answer.qid AND answer.userId=? LIMIT " + pageId * pageSize + "," + pageSize;
		return getUserList(sql, userId);
	}

	private Question setBasic(ResultSet set) {
		Question question = new Question();
		try {
			question.setId(set.getInt("id"));
			question.setTittle(set.getString("tittle"));
			//question.setqType(set.getInt("type"));
			//question.setContent(set.getString("content"));
			question.setPay(set.getInt("pay"));
			//question.setUserId(set.getString("userId"));
			if (containTag)
				question.setTag(new TagDAO().getAllTag(question.getId()));
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return question;
	}

	private List<Question> getUserList(String sql, String userId) {
		containTag = false;
		List<Question> list = new ArrayList();
		Connection connection = Util.getConnection();
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, userId);
			ResultSet set = statement.executeQuery();
			while (set.next()) {
				list.add(setBasic(set));
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

	private int getUserListCount(String sql, String userId) {
		int count = 0;
		Connection connection = Util.getConnection();
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, userId);
			ResultSet set = statement.executeQuery();
			set.next();
			count = set.getInt(1);
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
		return count;
	}
}
