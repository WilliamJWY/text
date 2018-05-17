package Proxy;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;

@Aspect
public class Handler {
	/*@Before("execution(* add*(..))")*/
	public void check(JoinPoint joinPoint){
		Object args[]=joinPoint.getArgs();
		String name=(String) args[0];
		if(name.equals("admin")){
			System.out.println("是管理员");
		}
		System.out.println("methodname="+joinPoint.getSignature().getName());
		System.out.println("--check--");
	}
	
}
