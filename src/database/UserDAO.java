package database;

import Entity.User;

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
		return false;
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
