package com.pt.action;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.pt.service.SERService;
import com.pt.vo.Student_evaluation_results;

public class SERAction {
	Student_evaluation_results ser;
	SERService sers;
	int tid;
	public Student_evaluation_results getSer() {
		return ser;
	}
	public void setSer(Student_evaluation_results ser) {
		this.ser = ser;
	}
	public void setSers(SERService sers) {
		this.sers = sers;
	}
	
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String addSER(){

		if(sers.addSER(ser)){
			return "success";
		}else{
			return "fail";
		}
	}
	public String findSER(){
		System.out.println(sers.findSER(tid));
		if(sers.findSER(tid).size()>0){
			List<Student_evaluation_results> lser=sers.findSER(tid);
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("lser", lser);
			return "success";
		}else{
			return "fail";
		}
	}
}
