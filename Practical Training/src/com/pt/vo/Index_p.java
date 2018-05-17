package com.pt.vo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="index_p")
public class Index_p {
int pid;
String pname;
String weight;
@Id
@GeneratedValue
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public String getPname() {
	return pname;
}
public void setPname(String pname) {
	this.pname = pname;
}
public String getWeight() {
	return weight;
}
public void setWeight(String weight) {
	this.weight = weight;
}

}
