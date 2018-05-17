package com.pt.daoImp;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pt.dao.TERDao;
import com.pt.vo.Teacher_evaluation_results;

public class TERDaoImp extends HibernateDaoSupport implements TERDao{

	public boolean addTER(Teacher_evaluation_results ter) {
		boolean f=true;
		try{
			this.getHibernateTemplate().save(ter);
		}catch(Exception e){
			e.printStackTrace();
			f=false;
		}
		return f;
	}

	public List<Teacher_evaluation_results> findTER(String jobid) {
		return this.getHibernateTemplate().find("from Teacher_evaluation_results ter where ter.jobid=?",jobid);
	}

}
