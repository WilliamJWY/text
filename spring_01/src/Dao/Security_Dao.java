package Dao;

import Model.User;

public interface Security_Dao {
	public int add(User u);
	public int update(User u);
	public int delete(User u);
}
