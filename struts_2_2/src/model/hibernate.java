package model;

/*import java.util.Date;
import java.util.List;
import java.util.ArrayList;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class hibernate {
	public static void main(String[] args) {
		Configuration cfg = new AnnotationConfiguration();
		SessionFactory sf = cfg.configure().buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();
		 添加 

		User user = new User();
		user.setUsername("zs456789");
		user.setPass("123");
		user.setDate(new Date());

		 更新 
		
		 * User user=new User(); user.setUsername("ssr"); user.setPass("456");
		 * user.setId(4); session.merge(user);
		 

		 删除 
		
		 * User user=(User) session.load(User.class, 4); session.delete(user);
		 

		
		 * 查询一条数据 User user1 = (User) session.get(User.class, 5); if (user1 !=
		 * null) { System.out.println(user1.getUsername()); }
		 

		
		 * 
		 * 查询多条数据
		 
		
		 * String sql = "from User"; Query query = session.createQuery(sql);
		 * List listUser = query.list();
		 * 
		 * for (int i = 0; i < listUser.size(); i++) { User user3 = (User)
		 * listUser.get(i); System.out.println(user3.getUsername()); }
		 

		session.save(user);
		session.getTransaction().commit();
		session.close();
		sf.close();
	}*/
import model.User;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

public class hibernate {
	Configuration cfg=null;
	SessionFactory sessionFactory = null;
	Session session = null;
	Transaction tx = null;
	
	public hibernate(){
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
