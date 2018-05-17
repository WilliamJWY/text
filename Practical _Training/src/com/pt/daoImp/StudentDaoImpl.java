package com.pt.daoImp;

import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import com.pt.dao.StudentDao;
import com.pt.vo.Student;

public class StudentDaoImpl extends HibernateDaoSupport implements StudentDao{

	public boolean addstudent(Student stu) {
		boolean f=false;
		try{
			this.getHibernateTemplate().save(stu);
			f=true;
		}catch(HibernateException e){
			e.printStackTrace();
		}
		return f;
	}

	public List<Student> yzStu(String sname) {
	List<Student> s=this.getHibernateTemplate().find("from Student stu where stu.sname=?",sname);
	return s;

	}

	public List<Student> findallstudent() {
		// TODO Auto-generated method stub
		return this.getHibernateTemplate().find("from Student");
	}

	public Student stuinfo(int sid) {
		// TODO Auto-generated method stub
		Student s=(Student) this.getHibernateTemplate().get(Student.class, sid);
		return s;
	}

	public boolean updatestudent(Student stu) {
		// TODO Auto-generated method stub
		boolean f=false;
		try{
			this.getHibernateTemplate().update(stu);
			f=true;
		}catch(HibernateException e){
			e.printStackTrace();
		}
		return f;
	}

	public boolean editstudent(int sid) {
		// TODO Auto-generated method stub
		Student stu=(Student) this.getHibernateTemplate().load(Student.class, sid);
		boolean f=false;
		if(stu.getSstate()==0){
			stu.setSstate(1);
		}else{
			stu.setSstate(0);
		}
		try{
			this.getHibernateTemplate().update(stu);
			f=true;
		}catch(HibernateException e){
			e.printStackTrace();
		}
		return f;
	}

	public boolean delstudent(int sid) {
		// TODO Auto-generated method stub
		boolean f=false;
		Student s=(Student) this.getHibernateTemplate().get(Student.class, sid);
		try{
			this.getHibernateTemplate().delete(s);
			f=true;
		}catch(HibernateException e){
			e.printStackTrace();
		}
		return f;
	}
	
}
