package Service;


import model.User;
import model.hibernate;

public class RegisterService {
	hibernate registerDao=null;
	public 	RegisterService(){
		registerDao = new hibernate();
		
	}
public boolean register(User user){
	return registerDao.save(user);
	
}
public boolean login(User u){
	User user=registerDao.findByLogin(u);
	if(user!=null){
		return true;
	}else{
		return false;
	}
	
}
}
