package action;

import service.RegisterService;
import model.User;

import com.opensymphony.xwork2.ActionSupport;

public class RegisterAction extends ActionSupport{

	User user;
	RegisterService rs=null;
	public RegisterAction(){
		rs=new RegisterService();
	}
	public String register(){
		System.out.println(user.getUsername());
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
