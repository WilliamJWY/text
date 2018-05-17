package model;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

public class test {
	public static void main(String[] args){
Configuration cfg = new AnnotationConfiguration();
SessionFactory sf = cfg.configure().buildSessionFactory();
Session session = sf.openSession();
session.beginTransaction();
Query q=session.createQuery("from Student s order by s.sid desc");
/*Query q=session.createQuery("from Student s where s.sid>:aa and s.sid<:bb");
q.setParameter("aa", 2);
q.setParameter("bb", 4);*/

List<Student> listTeam=q.list();
for(int i=0;i<listTeam.size();i++){
	Student t=listTeam.get(i);
	System.out.println(t.getSid()+" "+t.getName());
}
}
}

