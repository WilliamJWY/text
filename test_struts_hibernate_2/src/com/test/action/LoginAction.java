package com.test.action;

import com.opensymphony.xwork2.ActionSupport;
import com.test.model.User;
import com.test.service.RegisterService;

public class LoginAction extends ActionSupport{
User user;
RegisterService rs=null;
public LoginAction(){
	rs=new RegisterService();
}
public String login(){
	
if(rs.login(user)){
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
