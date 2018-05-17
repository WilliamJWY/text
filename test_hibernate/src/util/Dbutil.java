package util;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;
import org.hibernate.classic.Session;

public class Dbutil {
	private Configuration cfg=null;
	private SessionFactory sf=null;
	private Session session=null;
public	 Dbutil (){
	cfg=new AnnotationConfiguration();  
	sf=cfg.configure().buildSessionFactory();  
	session=sf.openSession();  
	 session.beginTransaction(); 
}
	
public Session getSession(){
	return session;
}

public void close(){
	if(session!=null){
		session.close();
	}
	if(sf!=null){
		sf.close();
	}
	
	
}
	 
}
