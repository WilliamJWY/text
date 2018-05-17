package model;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class Manytoone {
public static void main(String[] args){
	Configuration cfg = new AnnotationConfiguration();
	SessionFactory sf = cfg.configure().buildSessionFactory();
	Session session = sf.openSession();
	session.beginTransaction();
	session.get(Student.class,1);
	session.getTransaction().commit();
	session.close();
	sf.close();
}
}
