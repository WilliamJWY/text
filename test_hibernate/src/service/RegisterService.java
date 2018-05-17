package service;


import model.User;
import dao.RegisterDao;


public class RegisterService {
	RegisterDao rdao=null;
	
	public RegisterService(){
		rdao=new RegisterDao();
	}
	
	public boolean register(User u){
		return rdao.save(u);
	}
	public boolean login(User u){
		User user=rdao.findByLogin(u);
		if(user!=null){
			return true;
		}else{
			return false;
		}
		
	}
	
}
