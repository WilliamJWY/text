package com.pt.dao;

import java.util.List;

import com.pt.vo.Teacher;


public interface TeacherDao {
	
	public boolean addteacher(Teacher tea);
	
	public List<Teacher> findallteacher();
	
	public boolean editteacher(int tid);
	
	public Teacher teainfo(int tid);
	
	public boolean updateteacher(Teacher tea);
	
	
	public boolean delteacher(int tid);
}
