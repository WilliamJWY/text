package com.pt.vo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="xuanxiang")
public class Option {
int oid;
String A;
String B;
String C;
String D;
int iid;
@Id
@GeneratedValue
public int getOid() {
	return oid;
}
public void setOid(int oid) {
	this.oid = oid;
}
public String getA() {
	return A;
}
public void setA(String a) {
	A = a;
}
public String getB() {
	return B;
}
public void setB(String b) {
	B = b;
}
public String getC() {
	return C;
}
public void setC(String c) {
	C = c;
}
public String getD() {
	return D;
}
public void setD(String d) {
	D = d;
}
public int getIid() {
	return iid;
}
public void setIid(int iid) {
	this.iid = iid;
}


}
