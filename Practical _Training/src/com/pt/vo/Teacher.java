package com.pt.vo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.annotations.NotFound;
import org.hibernate.annotations.NotFoundAction;
@Entity
@Table(name="Teacher")
public class Teacher {
int tid;
String tname;
String jobid;
String tpass;
int rid;
int tstate;
@Id
@GeneratedValue
public int getTid() {
	return tid;
}
public void setTid(int tid) {
	this.tid = tid;
}
public String getTname() {
	return tname;
}
public void setTname(String tname) {
	this.tname = tname;
}

public String getJobid() {
	return jobid;
}
public void setJobid(String jobid) {
	this.jobid = jobid;
}
public String getTpass() {
	return tpass;
}
public void setTpass(String tpass) {
	this.tpass = tpass;
}
public int getRid() {
	return rid;
}
public void setRid(int rid) {
	this.rid = rid;
}

public int getTstate() {
	return tstate;
}
public void setTstate(int tstate) {
	this.tstate = tstate;
}

}
