package com.pt.dao;

import java.util.List;

import com.pt.vo.Student;


public interface StudentDao {
	public List<Student> yzStu(String sname);
	public boolean addstudent(Student stu);
	public boolean updatestudent(Student stu);
	public List<Student> findallstudent();
	public Student stuinfo(int sid);
	public boolean editstudent(int sid);
	public boolean delstudent(int sid);
	
}
