package com.test.dao;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.test.model.User;
import com.test.util.Dbutil;

public class RegisterDao {
	Dbutil dbu=null;
	Session session=null;
	public RegisterDao(){
		dbu=new Dbutil();
		session=dbu.getSession();
	}
	
	public boolean save(User u){
		
		boolean f=true;
		try {
			session.save(u);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			f=false;
			e.printStackTrace();
		}finally{
			session.close();
		}
		return f;
	}
	
	public  User  findByLogin( User u){
		String sql="from User user where user.name=:name and user.pass=:pass";
		Query query=session.createQuery(sql).setParameter("name", u.getName()).setParameter("pass",u.getPass());
		User user=(User) query.uniqueResult();
		session.getTransaction().commit();
		return user;
		
	}
	
	
}
