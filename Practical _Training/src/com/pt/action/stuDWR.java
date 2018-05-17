package com.pt.action;

import java.io.IOException;
import java.util.List;

import com.pt.service.StudentService;
import com.pt.vo.Student;

public class stuDWR {
StudentService ss;

public void setSs(StudentService ss) {
	this.ss = ss;
}

public String UE(String sname) throws IOException{
	List<Student> stu=ss.yzStu(sname);
	if(stu.size()>0){
		return "true";
	}else{
		return "false";
	}
}
}
