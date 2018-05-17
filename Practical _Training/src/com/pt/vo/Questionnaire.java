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
String qtype;
int iid;
Date star_time;
Date end_time;
int[] subject;
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
public String getQtype() {
	return qtype;
}
public void setQtype(String qtype) {
	this.qtype = qtype;
}
public int getIid() {
	return iid;
}
public void setIid(int iid) {
	this.iid = iid;
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
public int[] getSubject() {
	return subject;
}
public void setSubject(int[] subject) {
	this.subject = subject;
}
}
