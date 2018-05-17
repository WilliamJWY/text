package com.pt.vo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Role")
public class Role {
int rid;
String name;
String rstate;
String[] function;
@Id
@GeneratedValue
public int getRid() {
	return rid;
}
public void setRid(int rid) {
	this.rid = rid;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
	
public String[] getFunction() {
	return function;
}
public void setFunction(String[] function) {
	this.function = function;
}
public String getRstate() {
	return rstate;
}
public void setRstate(String rstate) {
	this.rstate = rstate;
}

}
