package database;

import Entity.User;

/**
 * Project: DaXiaTaoJing
 * Author: KaitoHH
 * Create Date: 2016/11/2
 * Description:
 * All rights reserved.
 */
public interface IUserDAO {
	public boolean insert(User user);

	public boolean delete(User user);

	public boolean update(User user);

	public User select(String id);
}
