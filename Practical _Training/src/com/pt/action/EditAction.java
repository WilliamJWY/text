package com.pt.action;

import com.pt.service.EditService;
import com.pt.vo.Student;

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

public String editspass(){
	if(es.updatespass(stu.getSid(), stu.getSpass())){
		return "success";
	}else{
		return "fail";
	}
}
}
