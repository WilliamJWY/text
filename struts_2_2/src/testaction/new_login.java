package testaction;

import java.io.IOError;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class new_login extends ActionSupport{
String user;
public String execute() throws IOException{
	HttpServletResponse response=ServletActionContext.getResponse();
	PrintWriter pw=response.getWriter();
	pw.print(user);
	return null;
}
public String getUser() {
	return user;
}
public void setUser(String user) {
	this.user = user;
}

}
