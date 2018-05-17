package Service;

import Dao.RegisterDao;
import model.User;

public class RegisterService {
	RegisterDao registerDao=null;
	public 	RegisterService(){
		registerDao = new RegisterDao();
		
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
