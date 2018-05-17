package testaction;

import model.User;

public class test {
	
User user;
public String success(){
	/*
	if(user.equals("tom")&&pass.equals("123")){
		return "success";
	}
	else{
		return "false";
	}
	*/
	System.out.print(user.getUsername());
	return "success";
}
public String execute2(){
	/*
	if(user.equals("tom")&&pass.equals("123")){
		return "success";
	}
	else{
		return "false";
	}
	*/
	System.out.print("s2");
	return "success";
}
public User getUser() {
	return user;
}
public void setUser(User user) {
	this.user = user;
}

}
