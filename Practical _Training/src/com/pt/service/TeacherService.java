package com.pt.service;

import java.util.List;

import com.pt.dao.TeacherDao;
import com.pt.vo.Teacher;

public class TeacherService {
	TeacherDao tdao;

	public void setTdao(TeacherDao tdao) {
		this.tdao = tdao;
	}
	
	public boolean AddTeacher(Teacher tea){
		return tdao.addteacher(tea);
	}
	public List<Teacher> FindAllTeacher(){
		return tdao.findallteacher();
	}
	public boolean EditTeacher(int tid){
		return tdao.editteacher(tid);
	}
	public Teacher TeaInfo(int tid){
		return tdao.teainfo(tid);
	}
	public boolean UpdateTeacher(Teacher tea){
		return tdao.updateteacher(tea);
	}
	public boolean DelTeacher(int tid){
		return tdao.delteacher(tid);
	}

}
