package com.test.service;

import java.util.List;

import com.test.dao.UserDao;
import com.test.model.User;

public class UserService {
UserDao udao;



public void setUdao(UserDao udao) {
	this.udao = udao;
}
public User TestUser(){
	return udao.TestUser();
}
public User findUser(int id){
	return udao.findUser(id);
}
public boolean addUser(User u){
	return udao.addUser(u);
}
public List<User> loginUser(User q){
	return udao.loginUser(q);
}
public List<User> insteruser() {
	
	return udao.insteruser();
}
public boolean deleteUser(int id){
	return udao.deleteUser(id);
}
}
