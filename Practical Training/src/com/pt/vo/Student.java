package com.pt.vo;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Student")
public class Student {
	private int sid;
	private String sname;
	private String suser;
	private int classid;
	private String course;
	private String spass;
	private int rid;
	private int sstate;
	private int[] tid;
	private Set<Teacher> teacheres = new HashSet<Teacher>();

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

	@ManyToMany(cascade={CascadeType.REMOVE}, fetch=FetchType.EAGER)
	public Set<Teacher> getTeacheres() {
		return teacheres;
	}

	public int[] getTid() {
		return tid;
	}

	public void setTid(int[] tid) {
		this.tid = tid;
	}

	public void setTeacheres(Set<Teacher> teacheres) {
		this.teacheres = teacheres;
	}
}
