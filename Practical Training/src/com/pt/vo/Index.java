package com.pt.vo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Index")
public class Index {
int iid;
String iname;
int pid;
double weight;
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
public double getWeight() {
	return weight;
}
public void setWeight(double weight) {
	this.weight = weight;
}

}
