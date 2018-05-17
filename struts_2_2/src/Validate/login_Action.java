package Validate;

import com.opensymphony.xwork2.ActionSupport;

public class login_Action extends ActionSupport{
String Username;
String pass;
public String execute() {
	
	return "success";

}
public String getUsername() {
	return Username;
}
public void setUsername(String username) {
	Username = username;
}
public String getPass() {
	return pass;
}
public void setPass(String pass) {
	this.pass = pass;
}

}
