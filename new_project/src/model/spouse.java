package model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class spouse {
	public static void main(String[] args) {
		Configuration cfg = new AnnotationConfiguration();
		SessionFactory sf = cfg.configure().buildSessionFactory();
		Session session = sf.openSession();
		session.beginTransaction();

		Husband hs = new Husband();
		Wife Wife = new Wife();
		Wife.setName("lily");
		hs.setName("tom");
		hs.setWife(Wife);
		
		session.save(hs);
		session.getTransaction().commit();
		session.close();
		sf.close();
	}
}
