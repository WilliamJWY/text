package Action;

import model.User;
import Service.RegisterService;

public final class LoginAction {
	User user;
	RegisterService rs=null;
public LoginAction(){
	rs=new RegisterService();
}
public String login(){
	if(rs.register(user)){
		return "success";
	}else{
		return "false";
	}
	
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}
}

