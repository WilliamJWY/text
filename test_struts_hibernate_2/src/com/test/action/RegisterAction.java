package com.test.action;

import com.opensymphony.xwork2.ActionSupport;
import com.test.model.User;
import com.test.service.RegisterService;

public class RegisterAction extends ActionSupport{
User user;
RegisterService rs=null;
public RegisterAction(){
	rs=new RegisterService();
}
public String register(){
	System.out.println(user.getName());
	if(rs.register(user)){
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
