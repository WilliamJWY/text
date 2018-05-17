package test;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import Bean.bean1;

public class test {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub
BeanFactory beanfactory=new ClassPathXmlApplicationContext("applicationContext.xml");
bean1 b1=(bean1) beanfactory.getBean("bean1");
System.out.println("bean2name="+b1.getB2().getName());
System.out.println("bean3name="+b1.getB3().getName());
System.out.println("bean4name="+b1.getB4().getName());
System.out.println("bean5name="+b1.getB5().getName());
	}

}
