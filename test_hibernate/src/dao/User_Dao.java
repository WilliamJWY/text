package dao;

import java.util.List;

import model.User;


import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import util.Dbutil;



public class User_Dao {
	Dbutil dbu=null;
	Session session=null;
	public User_Dao(){
		dbu=new Dbutil();
		session=dbu.getSession();
	}
	
	public List<User> findAll(){
		String sql="from User";
		Query query=session.createQuery(sql);
		List listUser=query.list();
		return listUser;
		
	}
	public boolean deletebyID(int id){
		boolean f=true;
		try{
			User user=(User) session.load(User.class,id);
			session.delete(user);
			session.getTransaction().commit();
		}catch(HibernateException e){
			f=false;
			e.printStackTrace();
		}
		return f;
	}
public User findById(int id){
User user=(User) session.get(User.class,id);
	return user;
}
public boolean updateUser(User u){
	boolean f=true;
	try{
		session.merge(u);
		session.getTransaction().commit();
	}catch(HibernateException e){
		e.printStackTrace();
		f=false;
	}
	return f;
}	
public User queryUser(int id){
User user=(User) session.get(User.class,id);
	return user;
}
	
}

