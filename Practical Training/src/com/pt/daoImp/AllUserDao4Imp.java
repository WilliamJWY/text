package com.pt.daoImp;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pt.dao.AllUserDao;
import com.pt.vo.Role;



public class AllUserDao4Imp extends HibernateDaoSupport implements AllUserDao{

		
	public List selectAll() {
		String sql="from Role";
		// TODO Auto-generated method stub
	
		return  this.getHibernateTemplate().find(sql);
	}



	

	public boolean editRstate(int rid) {
		Role r=(Role) this.getHibernateTemplate().load(Role.class, rid);
		if(r.getRstate().equals("1")){
			r.setRstate("0");
		}else if(r.getRstate().equals("0")){
			r.setRstate("1");
		}
//		String sql="";
//		SessionFactory sfac=this.getHibernateTemplate().getSessionFactory();
//		sfac.openSession();
		boolean f=true;
		try {
			
			this.getHibernateTemplate().update(r);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			f=false;
			e.printStackTrace();
		}
		return f;
//		return (Role) this.getHibernateTemplate().load(Role.class, rid);
		
	}





	public Role selectbyRid(int rid) {
		Role s=(Role) this.getHibernateTemplate().load(Role.class, rid);
		// TODO Auto-generated method stub
		System.out.println(s.getName());
		return s;
	}










	public boolean editFunction(int rid,String[] function) {
		Role r=(Role) this.getHibernateTemplate().load(Role.class, rid);
		boolean f=true;
		try {
			r.setFunction(function);
			this.getHibernateTemplate().merge(r);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			f=false;
			e.printStackTrace();
		}
		return f;
	}





	public boolean deleteRolebyrid(int rid) {
		// TODO Auto-generated method stub
		Role r=(Role) this.getHibernateTemplate().load(Role.class, rid);
		boolean f=true;
		try {			
			this.getHibernateTemplate().delete(r);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			f=false;
			e.printStackTrace();
		}
		return f;
	}





	public boolean addnewRole(Role r) {
		// TODO Auto-generated method stub
		boolean f=true;
		try {
			
			this.getHibernateTemplate().save(r);
		} catch (DataAccessException e) {
			// TODO Auto-generated catch block
			f=false;
			e.printStackTrace();
		}
		return f;
	}
    
}
