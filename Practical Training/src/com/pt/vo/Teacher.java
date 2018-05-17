package com.pt.vo;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.JoinColumn;

import org.hibernate.annotations.Cascade;

@Entity
@Table(name = "Teacher")
public class Teacher {
	private int tid;
	private String tname;
	private String jobid;
	private String tpass;
	private int rid;
	private int tstate;
	private Set<Student> students = new HashSet<Student>();
	
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

	@ManyToMany (cascade={CascadeType.REMOVE} ,fetch=FetchType.EAGER, mappedBy="teacheres")
	public Set<Student> getStudents() {
		return students;
	}

	public void setStudents(Set<Student> students) {
		this.students = students;
	}
}
