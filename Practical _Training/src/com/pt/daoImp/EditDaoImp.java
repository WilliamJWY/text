package com.pt.daoImp;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;


import com.pt.dao.editDao;
import com.pt.vo.Student;

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

}
