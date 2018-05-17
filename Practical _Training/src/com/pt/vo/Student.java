package com.pt.vo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Student")
public class Student {
int sid;
String sname;
String suser;
int classid;
String course;
int tid;
String spass;
int rid;
int sstate;
@Id
@GeneratedValue
public int getSid() {
	return sid;
}
public void setSid(int sid) {
	this.sid = sid;
}


public String getSname() {
	return sname;
}
public void setSname(String sname) {
	this.sname = sname;
}
public String getSuser() {
	return suser;
}
public void setSuser(String suser) {
	this.suser = suser;
}
public int getClassid() {
	return classid;
}
public void setClassid(int classid) {
	this.classid = classid;
}
public String getCourse() {
	return course;
}
public void setCourse(String course) {
	this.course = course;
}
public int getTid() {
	return tid;
}
public void setTid(int tid) {
	this.tid = tid;
}
public String getSpass() {
	return spass;
}
public void setSpass(String spass) {
	this.spass = spass;
}
public int getRid() {
	return rid;
}
public void setRid(int rid) {
	this.rid = rid;
}
public int getSstate() {
	return sstate;
}
public void setSstate(int sstate) {
	this.sstate = sstate;
}



}
