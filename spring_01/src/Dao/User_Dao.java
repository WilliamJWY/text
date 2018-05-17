package Dao;

import Model.User;

public interface User_Dao {

	public int add(User u);
	
	public int add(String string, String string2);

	public User TestUser();

	public User FindUser(int id);

	
	
}
