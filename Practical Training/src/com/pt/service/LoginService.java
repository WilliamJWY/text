package com.pt.service;

import java.util.List;

import com.pt.dao.LoginDao;
import com.pt.vo.Student;
import com.pt.vo.Teacher;

public class LoginService {
	LoginDao lgDao;

	public LoginDao getLgDao() {
		return lgDao;
	}

	public void setLgDao(LoginDao lgDao) {
		this.lgDao = lgDao;
	}
	
	public boolean LoginStudent(Student stu){
		return lgDao.LoginStudent(stu);
	}
	public boolean LoginTeancher(Teacher tc){
		return lgDao.LoginTeancher(tc);
	}
	
	public boolean LoginLd(Teacher tc){
		return lgDao.LoginLd(tc);
	}
	
	public boolean LoginGly(Teacher tc){
		return lgDao.LoginGly(tc);
	}
	
	public List<Student> loginFindSt(String sname){
		return lgDao.loginFindSt(sname);
	}
	
	public List<Teacher> loginFindTc(String jobid){
		return lgDao.loginFindTc(jobid);
	}


}