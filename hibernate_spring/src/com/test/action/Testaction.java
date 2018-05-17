package com.test.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import com.test.model.User;
import com.test.service.UserService;

public class Testaction extends ActionSupport {
	int id;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	UserService uservice;
	private User user;

	public void setUservice(UserService uservice) {
		this.uservice = uservice;
	}

	public String execute() {
		User u = uservice.findUser(id);
		HttpServletRequest request = ServletActionContext.getRequest();
		request.setAttribute("user", u);
		return "success";
	}

	public String addUser() {
		if (uservice.addUser(user)) {
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("user", user);
			return "success";
		} else {

			return "fail";
		}
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public String loginUser(){
		List<User> list=(List<User>) uservice.loginUser(user);
		if(list!=null){
			HttpServletRequest request=ServletActionContext.getRequest();
			request.setAttribute("listuser", list);
			return "success";
		}else{
		return "fail";
		}
		}
	
	public String deleteUser(){
		System.out.println(id);
		if(uservice.deleteUser(id)){
			User listuser=uservice.findUser(id);
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("list", listuser);
			return "success";
		}else{
		
		return "fail";
		}
	}
}
