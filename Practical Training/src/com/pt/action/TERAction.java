package com.pt.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.pt.service.TERService;
import com.pt.vo.Teacher_evaluation_results;

public class TERAction {
TERService ters;
Teacher_evaluation_results ter;
String jobid;
public Teacher_evaluation_results getTer() {
	return ter;
}
public void setTer(Teacher_evaluation_results ter) {
	this.ter = ter;
}
public void setTers(TERService ters) {
	this.ters = ters;
}

public String getJobid() {
	return jobid;
}
public void setJobid(String jobid) {
	this.jobid = jobid;
}
public String addTER(){
	if(ters.addTER(ter)){
		return "success";
	}else{
		return "fail";
	}
}
public String findTER(){
	if(ters.findTER(jobid).size()>0){
		List<Teacher_evaluation_results> lter=ters.findTER(jobid);
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("lter", lter);
		return "success";
	}else{
		return "fail";
	}
}
}
