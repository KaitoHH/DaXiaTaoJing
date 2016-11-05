package database;

import entity.Tag;

import java.sql.*;
import java.util.HashSet;
import java.util.Set;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/4
 * Description:
 * All rights reserved.
 */
public class TagDAO implements ITagDAO {

	@Override
	public int insert(Tag tag) {
		Connection connection = Util.getConnection();
		String sql = "INSERT INTO tag(name) VALUES(?)";
		int tid = -1;
		try {
			PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			statement.setString(1, tag.getName());
			statement.executeUpdate();
			ResultSet key = statement.getGeneratedKeys();
			key.next();
			tid = key.getInt(1);
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
		return tid;
	}

	@Override
	public int select(String name) {
		Connection connection = Util.getConnection();
		String sql = "SELECT id FROM tag WHERE name = ?";
		try {
			PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			statement.setString(1, name);
			ResultSet set = statement.executeQuery();
			if (!set.next()) return -1;
			return set.getInt("id");
		} catch (SQLException e) {
			e.printStackTrace();
			return -1;
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public Tag select(int id) {
		Tag tag = new Tag();
		Connection connection = Util.getConnection();
		String sql = "SELECT * FROM tag WHERE id = ?";
		try {
			PreparedStatement statement = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			statement.setInt(1, id);
			ResultSet set = statement.executeQuery();
			set.next();
			tag.setId(set.getInt(1));
			tag.setName(set.getString(2));
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
		return tag;
	}

	@Override
	public boolean insertRelation(int qid, Set<String> set) {
		for (String tagName : set) {
			int tid = select(tagName);
			if (tid == -1) {
				Tag tag = new Tag();
				tag.setName(tagName);
				tid = insert(tag);
			}
			insertQuestionTag(qid, tid);
		}
		return true;
	}

	@Override
	public Set<String> getAllTag(int qid) {
		Set<String> set = new HashSet();
		Connection connection = Util.getConnection();
		String sql = "SELECT tagId FROM question_tag WHERE qid = ?";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, qid);
			ResultSet rs = statement.executeQuery();
			while (rs.next()) {
				int tid = rs.getInt(1);
				set.add(select(tid).getName());
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
		return set;
	}

	public void insertQuestionTag(int qid, int tid) {
		Connection connection = Util.getConnection();
		String sql = "INSERT INTO question_tag VALUES (?,?)";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, qid);
			statement.setInt(2, tid);
			statement.executeUpdate();
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
	}

}
