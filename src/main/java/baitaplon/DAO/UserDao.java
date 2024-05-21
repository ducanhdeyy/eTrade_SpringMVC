package baitaplon.DAO;

import baitaplon.entities.User;

public interface UserDao {
	public User findByUserName(String username);
	public Boolean create(User user);
}
