package com.pt.service;

import java.util.List;
import java.util.Set;

import com.pt.dao.StudentDao;
import com.pt.vo.Student;
import com.pt.vo.Teacher;

public class StudentService {
	StudentDao sdao;

	public void setSdao(StudentDao sdao) {
		this.sdao = sdao;
	}
	
	public boolean AddStudent(Student stu){

		return sdao.addstudent(stu);
	}
	
	public List<Student> yzStu(String sname){

		return sdao.yzStu(sname);
	}
	
	public List<Student> FindAllStudent(){
		
		return sdao.findallstudent();
	}
	
	public Student StuInfo(int sid){
		
		return sdao.stuinfo(sid);
		
	}
	public boolean updateStudent(Student stu){
		
		return sdao.updatestudent(stu);
		
	}
	
	public boolean editStudent(int sid){
		return sdao.editstudent(sid);
	}
	public boolean delStudent(int sid){
		return sdao.delstudent(sid);
	}
	public Set<Teacher> FindT_S(int sid){

		return sdao.findt_s(sid);
	}
	
	
	
}
