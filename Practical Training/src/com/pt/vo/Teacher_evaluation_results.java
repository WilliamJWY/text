package com.pt.vo;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Teacher_evaluation_results")
public class Teacher_evaluation_results {
int terid;
int qid;
double score;
String jobid;
String tertype;
@Id
@GeneratedValue
public int getTerid() {
	return terid;
}
public void setTerid(int terid) {
	this.terid = terid;
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

public String getJobid() {
	return jobid;
}
public void setJobid(String jobid) {
	this.jobid = jobid;
}
public String getTertype() {
	return tertype;
}
public void setTertype(String tertype) {
	this.tertype = tertype;
}

}
