package com.pt.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.pt.service.AllUserService;
import com.pt.vo.Role;

public class FuctionEditAction {
   int rid;
	AllUserService aus;
	String[] function;
	
	public String[] getFunction() {
		return function;
	}
	public void setFunction(String[] function) {
		this.function = function;
	}
	public int getRid() {
		
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public void setAus(AllUserService aus) {
		this.aus = aus;
	}
	public String selectbyrid(){
		Role r =aus.selectbyRid(rid);
		HttpServletRequest request = ServletActionContext.getRequest();  
	    request.setAttribute("r",r);
		return "success";
	}
	public String EditFunction(){
		if(aus.editFunction(rid, function)){
			List list1 =aus.selectRole();
			HttpServletRequest request = ServletActionContext.getRequest();  
			request.setAttribute("List1",list1);
			return "success";
		}else{
			return "false";
		
		
	}
}
}