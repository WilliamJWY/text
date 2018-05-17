package com.pt.daoImp;

import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pt.dao.IndexDao;
import com.pt.vo.Index_c;
import com.pt.vo.Index_p;
import com.pt.vo.Option;

public class IndexDaoImp extends HibernateDaoSupport implements IndexDao{

	public boolean addIndex(Index_c i) {
		boolean f=true;
		try{
			this.getHibernateTemplate().save(i);
		}catch(Exception e){
			f=false;
			e.printStackTrace();
		}

		return f;
	}

	public boolean addIndexP(Index_p ip) {
		boolean f=true;
		try{
			this.getHibernateTemplate().save(ip);
		}catch(Exception e){
			f=false;
			e.printStackTrace();
		}

		return f;
	}

	public List<Index_p> findAllP() {
		return this.getHibernateTemplate().find("from Index_p");
	}

	public List<Index_c> findC() {
		return this.getHibernateTemplate().find("from Index_c");
	}

	public List<Index_c> findOC(int rid) {
		return this.getHibernateTemplate().find("from Index_c i where i.pid=?",rid);
	}

	public boolean delIndex_c(int iid) {
		boolean f=false;
		Index_c i_c=(Index_c) this.getHibernateTemplate().load(Index_c.class, iid);
		List<Option> ol=this.getHibernateTemplate().find("from Option xx where xx.iid=?", iid);
		if(ol.size()>0){
		Option o=ol.get(0);
		this.getHibernateTemplate().delete(o);
		}
		try{
			this.getHibernateTemplate().delete(i_c);
			
			f=true;
		}catch(HibernateException e){
			e.printStackTrace();
        }
		return f;     
	}

}
