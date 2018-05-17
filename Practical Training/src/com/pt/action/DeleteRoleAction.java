package com.pt.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.pt.service.AllUserService;

public class DeleteRoleAction {
	   int rid;
		AllUserService aus;
		public int getRid() {
			return rid;
		}
		public void setRid(int rid) {
			this.rid = rid;
		}
		public void setAus(AllUserService aus) {
			this.aus = aus;
		}
		public String deleteRole(){
			if(aus.deleteRolebyrid(rid)){
				List list1 =aus.selectRole();
				HttpServletRequest request = ServletActionContext.getRequest();  
				request.setAttribute("List1",list1);
				return "success";
			}else{
				return "false";
			}
		}
}
