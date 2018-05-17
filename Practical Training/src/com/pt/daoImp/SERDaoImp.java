package com.pt.daoImp;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pt.dao.SERDao;
import com.pt.vo.Student_evaluation_results;

public class SERDaoImp extends HibernateDaoSupport implements SERDao{

	public boolean addSER(Student_evaluation_results ser) {
		boolean f=true;
		try{
			this.getHibernateTemplate().save(ser);
		}catch(Exception e){
			e.printStackTrace();
			f=false;
		}
		return f;
	}

	public List<Student_evaluation_results> findSER(int tid) {
		return this.getHibernateTemplate().find("from Student_evaluation_results ser where ser.tid=?",tid);
		
	}

}
