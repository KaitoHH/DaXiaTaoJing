package database;

import Entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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
		return false;
	}

	@Override
	public User select(String id) {
		return null;
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
