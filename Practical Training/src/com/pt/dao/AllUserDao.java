package com.pt.dao;

import java.util.List;

import com.pt.vo.Role;

public interface AllUserDao {
        public List selectAll();
        public boolean editRstate(int rid);
        public Role selectbyRid(int rid);
        public boolean editFunction(int rid,String[] function);
        public boolean deleteRolebyrid(int rid);
        public boolean addnewRole(Role r);
        
}
