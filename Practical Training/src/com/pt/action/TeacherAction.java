package com.pt.action;

import com.pt.service.TeacherService;
import com.pt.vo.Teacher;

public class TeacherAction {
	TeacherService ts;
	Teacher tc;
	
	public Teacher getTc() {
		return tc;
	}


	public void setTc(Teacher tc) {
		this.tc = tc;
	}


	public void setTs(TeacherService ts) {
		this.ts = ts;
	}
	
	
	public String addTeacher(){
		if(ts.AddTeacher(tc)){
			return "success";
		}else{
			return "fail";
		}
	}
	

}
