package com.pt.daoImp;

import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pt.dao.TeacherDao;
import com.pt.vo.Student;
import com.pt.vo.Teacher;

public class TeacherDaoImpl extends HibernateDaoSupport implements TeacherDao {

	public boolean addteacher(Teacher tea) {
		boolean f=false;
		try{
			this.getHibernateTemplate().save(tea);
			f=true;
		}catch(HibernateException e){
			e.printStackTrace();
		}
		return f;
	}

	public List<Teacher> findallteacher() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Teacher");
	}

	public boolean editteacher(int tid) {
		// TODO Auto-generated method stub
		boolean f=false;
		Teacher tea=(Teacher) this.getHibernateTemplate().load(Teacher.class, tid);
		if(tea.getTstate()==1){
			tea.setTstate(0);
		}else{
			tea.setTstate(1);
		}
		try{
			this.getHibernateTemplate().update(tea);
			f=true;
		}catch(HibernateException e){
			e.printStackTrace();
		}
		return f;
	}

	public Teacher teainfo(int tid) {
		// TODO Auto-generated method stub
		Teacher t=(Teacher) this.getHibernateTemplate().get(Teacher.class, tid);
		return t;
	}

	public boolean updateteacher(Teacher tea) {
		// TODO Auto-generated method stub
		boolean f=false;
		try{
			this.getHibernateTemplate().update(tea);
			f=true;
		}catch(HibernateException e){
			e.printStackTrace();
		}
		return f;
		
	}

	public boolean delteacher(int tid) {
		// TODO Auto-generated method stub
		boolean f=false;
		Teacher t=(Teacher) this.getHibernateTemplate().get(Teacher.class, tid);
		try{
			this.getHibernateTemplate().delete(t);
			f=true;
		}catch(HibernateException e){
			e.printStackTrace();
		}
		return f;
	}
	


}
