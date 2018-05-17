package com.pt.daoImp;

import java.util.HashSet;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;
import org.junit.Test;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pt.vo.Student;
import com.pt.vo.Teacher;

public class test extends HibernateDaoSupport{



	    public static void main(String[] args) {

	    	

	    	    Student s=new Student();
	    	    s.setSname("二胖");
	    	  
	    	      	    
	    	    Student s2=new Student();
	    	    s2.setSname("张三2");
	    	    
	    	    
	    	    Teacher  c1=new Teacher();
	    	    c1.setTname("傅捷");
	    	    
	    	    
	    	    Teacher  c2=new Teacher();
	    	    c2.setTname("杨谊");
	    	    
	    	    s.getTeacheres().add(c1);
	    	    s.getTeacheres().add(c2);
	    	    
	    	    c1.getStudents().add(s);
	    	    c1.getStudents().add(s2);
	    	    
	    	    c2.getStudents().add(s);
	    	    c2.getStudents().add(s2);
	    	    
	    //	    s.setTeachers(tea);
	    		// TODO Auto-generated method stub
	    		SessionFactory  sessionFactory=new  AnnotationConfiguration().configure().buildSessionFactory();
	    		Session  session=sessionFactory.openSession();
	    		
	    		session.beginTransaction();//开启一个事物
//	    		数据库添加
	    		
	    		session.save(s);
	    		session.save(s2);
	    		session.save(c1);
	    		session.save(c2);
	    		
	    		//session.save(s);//保存user到数据库
//	    		
//	    		/*删除
//	    		*/
//	    			    User user=(User) session.load(User.class,3);
//	    			    System.out.println(user);
//	    				session.delete(user);
	    			
//	    		/*修改
////	    		*/	 
//	    				User user=new User();
//	    				user.setUsername("akina");
//	    				
//	    				session.merge(user);
	    				
//	    		/*查询一条数据
//	    		*/
//	    			User user2=(User) session.get(User.class,8);	
//	    		  if(user2!=null){
//	    			  System.out.println(user2);
//	    		------输出user2的名字
//	    		}
	    //
	    //
//	    		/*
	    //
//	    		查询多条数据
//	    		*/
	    //
	    ////
//	    		String sql="from User";
//	    		Query query=session.createQuery(sql);
//	    				List listUser=query.list();
//	    				
//	    				for(int i=0;i<listUser.size();i++){
//	    					User user3=(User) listUser.get(i);
//	    					System.out.println(user3.getUsername());
//	    				}
	    			    session.getTransaction().commit();//提交
	    				session.close();//关闭数据库连接	
	    //
	    	}
	    	
	    
	
	}


	   