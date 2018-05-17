package action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;



import org.apache.struts2.ServletActionContext;

import service.RegisterService;
import service.User_service;
import model.User;

import com.opensymphony.xwork2.ActionSupport;



public class QueryAction extends ActionSupport{
User user;
RegisterService rs=null;
User_service us=null;
public QueryAction(){
	rs=new RegisterService();
	us=new User_service();
}
public String queryUser(){
	User u=us.findUser(user.getId());
	
	HttpServletRequest request = ServletActionContext.getRequest();
	request.setAttribute("user", u);
	System.out.println(u.getHobby());
	String hobby[]=u.getHobby().split(",");
	List<String> hobbys=new ArrayList<String>();
	for(String b :hobby){
		hobbys.add(b);
		System.out.println(b);		
	}
	request.setAttribute("hobby", hobbys);
	return "success";
}


public User getUser() {
	return user;
}


public void setUser(User user) {
	this.user = user;
}
}
