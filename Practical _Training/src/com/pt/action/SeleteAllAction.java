package com.pt.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;





import com.pt.service.AllUserService;
import com.pt.vo.Role;

public class SeleteAllAction {
	AllUserService aus;
    int rid;
	public int getRid() {
		return rid;
	}
	public void setRid(int rid) {
		this.rid = rid;
	}
	public void setAus(AllUserService aus) {
		this.aus = aus;
	}
	//管理员登录
	public String LoginAdmin(){
	List list1 =aus.selectRole();
	HttpServletRequest request = ServletActionContext.getRequest();  
	request.setAttribute("List1",list1);
	return "success";
	}
	//注销和激活
	public String editRstate(){
		
		if(aus.editRstate(rid)){
			List list1 =aus.selectRole();
			HttpServletRequest request = ServletActionContext.getRequest();  
			request.setAttribute("List1",list1);
			return "success";
		}else{
			return "false";
		}
	}
}
