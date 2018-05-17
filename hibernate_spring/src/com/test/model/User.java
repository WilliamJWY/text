package com.test.model;
//ע��ҵ��ʵ����
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
int id;//��ˮ��
String name;//��Ա��¼��
String username;//��ʵ����
String password;//�û�����
String sex;//�Ա�
String province;//ʡ��
int age;//�Ա�
String love;//����
Date birth;//����
String mobile;//�ֻ�
String email;//����
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