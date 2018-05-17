package com.pt.daoImp;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import com.pt.dao.editDao;
import com.pt.vo.Student;
import com.pt.vo.Teacher;

public class EditDaoImp extends HibernateDaoSupport implements editDao{

	public boolean updatespass(int sid,String spass) {
		// TODO Auto-generated method stub
		boolean f=true;
		try{
		Student stu=(Student) this.getHibernateTemplate().get(Student.class, sid);
		stu.setSpass(spass);
		stu.setSid(sid);
		this.getHibernateTemplate().update(stu);
		}catch(Exception e){
			f=false;
		}
		return f;
	}

	public boolean updatetpass(int tid, String tpass) {
		// TODO Auto-generated method stub
		boolean f=true;
		try{
		Teacher tc=(Teacher) this.getHibernateTemplate().get(Teacher.class, tid);
		tc.setTpass(tpass);
		tc.setTid(tid);
		this.getHibernateTemplate().update(tc);
		}catch(Exception e){
			f=false;
		}
		return f;
	}
}
