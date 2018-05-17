package com.pt.action;

import com.pt.service.EditService;
import com.pt.vo.Student;
import com.pt.vo.Teacher;

public class EditAction {
EditService es;

public void setEs(EditService es) {
	this.es = es;
}
Student stu;

public Student getStu() {
	return stu;
}

public void setStu(Student stu) {
	this.stu = stu;
}
Teacher tc;

public Teacher getTc() {
	return tc;
}

public void setTc(Teacher tc) {
	this.tc = tc;
}

public String editspass(){
	if(es.updatespass(stu.getSid(), stu.getSpass())){
		return "success";
	}else{
		return "fail";
	}
}
public String edittpass(){
		if(es.updatetpass(tc.getTid(), tc.getTpass())){
			return "success";
		}else{
			return "fail";
		}
	}

}
