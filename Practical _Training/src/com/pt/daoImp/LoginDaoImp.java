package com.pt.daoImp;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pt.dao.LoginDao;
import com.pt.vo.Student;
import com.pt.vo.Teacher;


public class LoginDaoImp extends HibernateDaoSupport implements LoginDao{
	
	public boolean  LoginStudent(Student stu) {
		boolean f = false;
        try{
        	List<Student> s=this.getHibernateTemplate().find("from Student stu where stu.sname=? and stu.spass=?",new String[]{stu.getSname(),stu.getSpass()});
        	
        	if(s.size()>0){
        		return true;
        	}else{
        		return false;
        	}
        }catch(HibernateException e){
			e.printStackTrace();
        }     
        return f;
    }
	


	public boolean  LoginTeancher(Teacher tc) {
		boolean f = false;
        try{
        	
        	List<Teacher> s=this.getHibernateTemplate().find("from Teacher tc where tc.jobid=? and tc.tpass=? and tc.rid=2",new String[]{tc.getJobid(),tc.getTpass()});
        	
        	if(s.size()>0){
        		return true;
        	}else{
        		return false;
        	}
        }catch(HibernateException e){
			e.printStackTrace();
        }     
        return f;
    }
	
	public boolean  LoginLd(Teacher tc) {
		boolean f = false;
        try{
        	
        	List<Teacher> s=this.getHibernateTemplate().find("from Teacher tc where tc.jobid=? and tc.tpass=? and tc.rid=3",new String[]{tc.getJobid(),tc.getTpass()});
        	
        	if(s.size()>0){
        		return true;
        	}else{
        		return false;
        	}
        }catch(HibernateException e){
			e.printStackTrace();
        }     
        return f;
    }
	
	public boolean  LoginGly(Teacher tc) {
		boolean f = false;
        try{
        	
        	List<Teacher> s=this.getHibernateTemplate().find("from Teacher tc where tc.jobid=? and tc.tpass=? and tc.rid=4",new String[]{tc.getJobid(),tc.getTpass()});
        	
        	if(s.size()>0){
        		return true;
        	}else{
        		return false;
        	}
        }catch(HibernateException e){
			e.printStackTrace();
        }     
        return f;
    }



	public List<Student> loginFindSt(String sname) {
		List<Student> s=this.getHibernateTemplate().find("from Student stu where stu.sname=?",sname);
		return s;
	}



	public List<Teacher> loginFindTc(String jobid) {
		// TODO Auto-generated method stub
		List<Teacher> t=this.getHibernateTemplate().find("from Teacher tc where tc.jobid=?",jobid);
		return t;
	}
	
}
