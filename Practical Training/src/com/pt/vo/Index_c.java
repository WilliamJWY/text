package com.pt.vo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="index_c")
public class Index_c {
int iid;
String iname;
int pid;
String weight;

@Id
@GeneratedValue
public int getIid() {
	return iid;
}
public void setIid(int iid) {
	this.iid = iid;
}
public String getIname() {
	return iname;
}
public void setIname(String iname) {
	this.iname = iname;
}
public int getPid() {
	return pid;
}
public void setPid(int pid) {
	this.pid = pid;
}
public String getWeight() {
	return weight;
}
public void setWeight(String weight) {
	this.weight = weight;
}

}
