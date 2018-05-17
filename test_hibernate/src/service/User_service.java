package service;

import java.util.List;

import model.User;

import dao.RegisterDao;
import dao.User_Dao;

public class User_service {
	RegisterDao rdao=null;
	User_Dao udao=null;
	public User_service(){
		rdao=new RegisterDao();
		udao=new User_Dao();
	}
	public List<User>findAll(){
		return udao.findAll();
		
	}
	public boolean deleteUser(int id) {
		// TODO Auto-generated method stub
		return udao.deletebyID(id);
	}
	public User findUser(int id) {
		// TODO Auto-generated method stub
		return udao.findById(id);
	}
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return udao.updateUser(user);
	}
	public User queryUser(int id) {
		// TODO Auto-generated method stub
		return udao.queryUser(id);
	}
}
