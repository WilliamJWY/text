package com.pt.dao;

import java.util.List;
import java.util.Set;

import com.pt.vo.Student;
import com.pt.vo.Teacher;


public interface StudentDao {
	public List<Student> yzStu(String sname);
	public boolean addstudent(Student stu);
	public boolean updatestudent(Student stu);
	public List<Student> findallstudent();
	public Student stuinfo(int sid);
	public boolean editstudent(int sid);
	public boolean delstudent(int sid);
	public Set<Teacher> findt_s(int sid);
}
