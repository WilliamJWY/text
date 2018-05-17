package com.pt.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts2.ServletActionContext;

import com.pt.service.AllUserService;
import com.pt.vo.Role;

public class AddNewRoleAction {
	   Role role;
		AllUserService aus;
		public void setAus(AllUserService aus) {
			this.aus = aus;
		}
		
		public Role getRole() {
			return role;
		}

		public void setRole(Role role) {
			this.role = role;
		}

		public String addRole(){
			Role r=new Role();
			r.setName(role.getName());
			r.setRstate(role.getRstate());
			if(aus.addnewRole(r)){
				List list1 =aus.selectRole();
				HttpServletRequest request = ServletActionContext.getRequest();  
				request.setAttribute("List1",list1);
				return "success";
			}else{
				return "false";
			}
		}
}
