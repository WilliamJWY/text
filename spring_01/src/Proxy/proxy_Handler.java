package Proxy;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
@Aspect
public class proxy_Handler implements InvocationHandler{
private Object tagerget;
public Object newProxy (Object tagerget){
	this.tagerget=tagerget;
	
	return Proxy.newProxyInstance(tagerget.getClass().getClassLoader(),tagerget.getClass().getInterfaces(),this);
}
	@Override
	public Object invoke(Object proxy, Method method, Object[] arg2)
			throws Throwable {
		check();
		Object ret=null;
		ret=method.invoke(this.tagerget, arg2);
		return ret;
	}
	/*private void check() {
		System.out.println("----check----");
		
	}*/
	@Before("execution(* add*(..))")
	public void check(){
		System.out.println("--check--");
	}

}
