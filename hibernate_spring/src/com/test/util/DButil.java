package com.test.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class DButil {
	private Configuration cfg=null;
	private SessionFactory sf=null;
	private Session session=null;
public	 DButil (){
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
