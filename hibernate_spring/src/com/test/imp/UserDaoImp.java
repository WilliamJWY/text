package com.test.imp;

import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.springframework.dao.DataAccessException;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.test.dao.UserDao;
import com.test.model.User;

public class UserDaoImp extends HibernateDaoSupport implements UserDao {

	@Override
	public User TestUser() {
		User u=new User();
		u.setName("lxs");
		u.setPassword("123");
		return u;
	}

	@Override
	public User findUser(int id) {
		User u=(User) this.getHibernateTemplate().get(User.class,id);
		return u;
	}

	@Override
	public boolean addUser(User u) {
		boolean f=true;
		try{
			this.getHibernateTemplate().save(u);
		}catch (HibernateException e){
			f=false;
			e.printStackTrace();
		}
		System.out.println(u.getPassword());
		return f;
	}

	@Override
	public List<User> loginUser(User q) {

		return (List<User>) this.getHibernateTemplate().find("from User where name=? and password=?",new String[]{q.getName(),q.getPassword()});
	}

	@Override
	public List<User> insteruser() {
		List u=this.getHibernateTemplate().find("from User");
		return u;
	}

	@Override
	public boolean deleteUser(int id) {
		
		User u=(User) this.getHibernateTemplate().get(User.class,id);
		boolean f=true;
		try{
			this.getHibernateTemplate().delete(u);
		}catch(HibernateException e){
			f=false;
			e.printStackTrace();
		}
		return f;
		
		
	}

	

	

}
