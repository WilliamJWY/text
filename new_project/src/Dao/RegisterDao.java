package Dao;

import model.User;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

public class RegisterDao {
	Configuration cfg=null;
	SessionFactory sessionFactory = null;
	Session session = null;
	Transaction tx = null;
	
	public RegisterDao(){
cfg = new AnnotationConfiguration();
cfg.configure();
sessionFactory = cfg.buildSessionFactory();
	}
	
	public boolean save(User user){
		boolean ret = false;
		try{
			session = sessionFactory.openSession();
			tx = session.beginTransaction();
			session.save(user);
			tx.commit();
			ret = true;
		}catch(HibernateException e){
			if(tx != null){
				tx.rollback();
			}
			e.printStackTrace();
			ret = false;
		}
		if(session != null){
			session.close();
		}
		return ret;
	}
	public  User  findByLogin( User u){
		String sql="from User user where user.name=:name and user.pass=:pass";
		Query query=session.createQuery(sql).setParameter("name", u.getUsername()).setParameter("pass",u.getPass());
		User user=(User) query.uniqueResult();
		session.getTransaction().commit();
		return user;
		
	}
}
