package Action;

import org.apache.struts2.ServletActionContext;

import Model.User;
import Service.User_Service;

import com.opensymphony.xwork2.ActionSupport;

public class Test_Action extends ActionSupport{
int id;

public int getId() {
	return id;
}

public void setId(int id) {
	this.id = id;
}
User_Service user_service;

public void setUser_service(User_Service user_service) {
	this.user_service = user_service;
}
public String execute(){
	User u=user_service.findUser(id);
	HttpServletRequest request = ServletActionContext.getRequest();
	
	return null;
	
}
}
