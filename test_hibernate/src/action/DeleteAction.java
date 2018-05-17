package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;



import org.apache.struts2.ServletActionContext;

import service.RegisterService;
import service.User_service;
import model.User;

import com.opensymphony.xwork2.ActionSupport;



public class DeleteAction extends ActionSupport{
User user;
RegisterService rs=null;
User_service us=null;
public DeleteAction(){
	rs=new RegisterService();
	us=new User_service();
}
public String deleteUser(){
	if(us.deleteUser(user.getId())){
		List<User> list=us.findAll();
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("listuser",list);
		return "success";
	}else{
		return "fail";
	}
}


public User getUser() {
	return user;
}


public void setUser(User user) {
	this.user = user;
}
}
