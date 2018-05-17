package com.test.model;
//注册业务实体类
import java.util.*;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
@Entity
@Table(name="user")
public class User {
int id;//流水号
String name;//会员登录名
String username;//真实姓名
String password;//用户密码
String sex;//性别
String province;//省份
int age;//性别
String love;//爱好
Date birth;//生日
String mobile;//手机
String email;//邮箱
@Id
@GeneratedValue
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getProvince() {
	return province;
}
public void setProvince(String province) {
	this.province = province;
}
public int getAge() {
	return age;
}
public void setAge(int age) {
	this.age = age;
}
@Temporal(TemporalType.DATE)
public Date getBirth() {
	return birth;
}
public void setBirth(Date birth) {
	this.birth = birth;
}
public String getMobile() {
	return mobile;
}
public void setMobile(String mobile) {
	this.mobile = mobile;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}

public String getLove() {
	return love;
}
public void setLove(String love) {
	this.love = love;
}




}