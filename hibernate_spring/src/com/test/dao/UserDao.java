package com.test.dao;

import java.util.List;

import com.test.model.User;

public interface UserDao {
	public User TestUser();

	public User findUser(int id);

	public boolean addUser(User u);
	public List<User> loginUser(User q);

	public List<User> insteruser();
	public boolean deleteUser(int id);

	
}
