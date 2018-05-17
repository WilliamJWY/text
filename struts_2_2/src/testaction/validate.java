package testaction;



import com.opensymphony.xwork2.ActionSupport;



public class validate extends ActionSupport{
	String Username;
	String pass;
    String age;
    String sex;
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

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

}
