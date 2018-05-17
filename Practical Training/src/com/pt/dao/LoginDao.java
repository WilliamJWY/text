package com.pt.dao;

import java.util.List;

import com.pt.vo.Student;
import com.pt.vo.Teacher;

public interface LoginDao {

	public boolean LoginStudent(Student stu);

	public boolean LoginTeancher(Teacher tc);
	
	public boolean LoginLd(Teacher tc);
	
	public boolean LoginGly(Teacher tc);
	
	public List<Student> loginFindSt(String sname);
	
	public List<Teacher> loginFindTc(String jobid);
	

}
