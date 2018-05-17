package textaction;

import model.User;

public class text {
	
User user;
private String pass;
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

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
