package testaction;

import model.User;

import com.opensymphony.xwork2.ModelDriven;

public class test2 implements ModelDriven<User>{
   User user = new User();
	public String adduser(){
		System.out.print(user.getUsername()+user.getPass());
		return "success";
	}
	
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}

}
