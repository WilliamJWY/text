package Model;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;


import Dao.Security_Dao;
import Dao.User_Dao;
import Dao_Imp.Dao_Imp_mysql;
import Dao_Imp.Dao_Imp_mysql_prox;
import Proxy.proxy_Handler;
import Service.User_Service;

public class Test {
public static void main(String[] args){
/*	BeanFactory fac=new ClassPathXmlApplicationContext("applicationContext.xml");
	User_Service user_service=(User_Service) fac.getBean("user_service");
	user_service.addUser(new User());*/
	
	/*User_Dao udao=new Dao_Imp_mysql_prox(new Dao_Imp_mysql());
	udao.add(new User());*/
	
	/*proxy_Handler handler=new proxy_Handler();
	Security_Dao udao=(Security_Dao) handler.newProxy(new Dao_Imp_mysql());
	udao.add(new User());*/
	User u=new User();
	u.setName("zs");
	u.setPass(111);
	BeanFactory bf=new ClassPathXmlApplicationContext("applicationContext_*.xml");
	User_Dao udao=(User_Dao) bf.getBean("user_Dao_Imp");
	udao.add(u);
	
	
}
}
