package com.pt.action;

import com.pt.service.StudentService;
import com.pt.vo.Student;

public class StudentAction {
	StudentService ss;
	Student stu;
	public Student getStu() {
		return stu;
	}
	public void setStu(Student stu) {
		this.stu = stu;
	}
	public void setSs(StudentService ss) {
		this.ss = ss;
	}
	
	//添加学生
	public String addStudent(){
		if(ss.AddStudent(stu)){
			return "success";
		}else{
			return "fail";
		}
	}
	
	
}
