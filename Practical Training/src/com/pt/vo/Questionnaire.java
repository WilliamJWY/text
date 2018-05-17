package com.pt.vo;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="Questionnaire")
public class Questionnaire {
int qid;
String qname;
int pid;
Date star_time;
Date end_time;

@Id
@GeneratedValue
public int getQid() {
	return qid;
}
public void setQid(int qid) {
	this.qid = qid;
}
public String getQname() {
	return qname;
}
public void setQname(String qname) {
	this.qname = qname;
}

public Date getStar_time() {
	return star_time;
}
public void setStar_time(Date star_time) {
	this.star_time = star_time;
}
public Date getEnd_time() {
	return end_time;
}
public void setEnd_time(Date end_time) {
	this.end_time = end_time;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}

}
