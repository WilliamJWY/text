package com.pt.service;

import java.util.List;

import com.pt.dao.AllUserDao;
import com.pt.vo.Role;

public class AllUserService {
	AllUserDao adao;

	public void setAdao(AllUserDao adao) {
		this.adao = adao;
	}

	public List selectRole(){
		return adao.selectAll();
	}
	public boolean editRstate(int rid){
		return adao.editRstate(rid);
	}
	public Role selectbyRid(int rid){
		return adao.selectbyRid(rid);
	}
	public boolean editFunction(int rid,String[] function){
		return adao.editFunction(rid,function);
	}
	public boolean deleteRolebyrid(int rid){
		return adao.deleteRolebyrid(rid);
	}
	public boolean addnewRole(Role r){
		return adao.addnewRole(r);
	}
}
