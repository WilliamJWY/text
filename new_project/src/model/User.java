package model;



import java.util.Date;


import javax.persistence.Entity;
import javax.persistence.GeneratedValue;

import javax.persistence.Id;

import javax.persistence.Table;


import com.opensymphony.xwork2.ActionSupport;

@Entity
@Table(name="userinfo")
public class User{

	String Username;
	String pass;
	int id;
	Date birth;
	String sex;

	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	

}
