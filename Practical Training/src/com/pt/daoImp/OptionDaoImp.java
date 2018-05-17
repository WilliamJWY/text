package com.pt.daoImp;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pt.dao.OptionDao;
import com.pt.vo.Option;
import com.pt.vo.Teacher;

public class OptionDaoImp extends HibernateDaoSupport implements OptionDao{

	public boolean addOption(Option o) {
		boolean f=true;
		try{
			this.getHibernateTemplate().save(o);
		}catch(Exception e){
			e.printStackTrace();
			f=false;
		}
		return f;
	}

	public List<Option> findO(int iid) {
		return this.getHibernateTemplate().find("from Option o where o.iid=?",iid);
		 
	}

	public boolean updateOption(Option o) {
		boolean f=true;
		try{
			Option op=new Option();
			op.setOid(o.getOid());
			op.setA(o.getA());
			op.setB(o.getB());
			op.setC(o.getC());
			op.setD(o.getD());
			op.setIid(o.getIid());
			this.getHibernateTemplate().merge(op);
		}catch(Exception e){
			e.printStackTrace();
			f=false;
		}
		return f;
	}

	public List<Option> findAllO() {
		return this.getHibernateTemplate().find("from Option");
	}



}
