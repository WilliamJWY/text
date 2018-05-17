package com.pt.vo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Student_evaluation_results")
public class Student_evaluation_results {
int serid;
int qid;
double score;
int sid;
int classid;
int tid;
@Id
@GeneratedValue
public int getSerid() {
	return serid;
}
public void setSerid(int serid) {
	this.serid = serid;
}
public int getQid() {
	return qid;
}
public void setQid(int qid) {
	this.qid = qid;
}

public double getScore() {
	return score;
}
public void setScore(double score) {
	this.score = score;
}
public int getSid() {
	return sid;
}
public void setSid(int sid) {
	this.sid = sid;
}
public int getClassid() {
	return classid;
}
public void setClassid(int classid) {
	this.classid = classid;
}
public int getTid() {
	return tid;
}
public void setTid(int tid) {
	this.tid = tid;
}

}
