package database;

import entity.User;

import java.sql.*;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/2
 * Description:
 * All rights reserved.
 */
public class UserDAO implements IUserDAO {

	@Override
	public boolean insert(User user) {
		Connection connection = Util.getConnection();
		String sql = "INSERT INTO user(id,name,dept_name,gender,email) VALUES(?,?,?,?,?)";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, user.getId());
			statement.setString(2, user.getName());
			statement.setString(3, user.getDept());
			statement.setInt(4, user.getGender());
			statement.setString(5, user.getEmail());
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
	public boolean delete(User user) {
		return false;
	}

	@Override
	public boolean update(User user) {
		Connection connection = Util.getConnection();
		String sql = "UPDATE user SET gender=?,email=?,introduction=?,long_intro=? WHERE id=?";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setInt(1, user.getGender());
			statement.setString(2, user.getEmail());
			statement.setString(3, user.getIntroduction());
			statement.setString(4, user.getLongIntro());
			statement.setString(5, user.getId());
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
	public User select(String id) {
		User user = null;
		Connection connection = Util.getConnection();
		String sql = "SELECT * FROM user WHERE id = ?";
		try {
			PreparedStatement statement = connection.prepareStatement(sql);
			statement.setString(1, id);
			ResultSet set = statement.executeQuery();
			if (set.next()) {
				user = new User();
				user.setId(id);
				user.setName(set.getString("name"));
				user.setEmail(set.getString("email"));
				user.setDept(set.getString("dept_name"));
				user.setGender(set.getInt("gender"));
				user.setIntroduction(set.getString("introduction"));
				user.setLongIntro(set.getString("long_intro"));
				user.setPoint(set.getInt("point"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				connection.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return user;
	}

	public User checkOrInsert(User user) {
		User curUser = select(user.getId());
		if (curUser == null) {
			insert(user);
			curUser = user;
		}
		return curUser;
	}
}
