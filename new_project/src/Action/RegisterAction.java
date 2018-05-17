package Action;



import com.opensymphony.xwork2.ActionSupport;

import model.User;
import Service.RegisterService;

public class RegisterAction extends ActionSupport{
	User user;
	RegisterService rs=null;
public RegisterAction(){
	rs=new RegisterService();
}
public String register(){
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

