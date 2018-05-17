package com.pt.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;



import org.apache.struts2.ServletActionContext;

import com.pt.service.StudentService;
import com.pt.service.TeacherService;
import com.pt.vo.Student;
import com.pt.vo.Teacher;

public class UserAction {
	TeacherService ts;
	StudentService ss;
	Student stu;
	Teacher tc;

	
	
	public Student getStu() {
		return stu;
	}



	public void setStu(Student stu) {
		this.stu = stu;
	}



	public Teacher getTc() {
		return tc;
	}



	public void setTc(Teacher tc) {
		this.tc = tc;
	}



	public void setTs(TeacherService ts) {
		this.ts = ts;
	}



	public void setSs(StudentService ss) {
		this.ss = ss;
	}


	//瀛︾敓淇℃伅
	public String StuInfo(){
		if(ss.StuInfo(stu.getSid())!=null){
			Student s=ss.StuInfo(stu.getSid());
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("Student", s);
			return "success";
		}else{
			return "fail";
		}
		
	}
	
	//淇敼瀛︾敓
	public String UpdateStu(){
		if(ss.updateStudent(stu)){
			List<Student> s=(List<Student>) ss.FindAllStudent() ;
		
		
              HttpServletRequest request=ServletActionContext.getRequest();
              request.setAttribute("Student", s);
            
			return "success";
		}else{
			return "fail";
		}
	}
	
	//瀛︾敓娉ㄩ攢涓庢縺娲�
	public String EditStu(){
		
		if(ss.editStudent(stu.getSid())){
			List<Student> s=(List<Student>) ss.FindAllStudent() ;
			List<Teacher> t=(List<Teacher>) ts.FindAllTeacher() ;
              HttpServletRequest request=ServletActionContext.getRequest();
              request.setAttribute("Student", s);
              request.setAttribute("Teacher", t);
			return "success";
		}else{
			return "fail";
		}
	}
	
	//鍒犻櫎瀛︾敓
	public String DelStu(){
		if(ss.delStudent(stu.getSid())){
			List<Student> s=(List<Student>) ss.FindAllStudent() ;
			List<Teacher> t=(List<Teacher>) ts.FindAllTeacher() ;
              HttpServletRequest request=ServletActionContext.getRequest();
              request.setAttribute("Student", s);
              request.setAttribute("Teacher", t);
              return "success";
		}else{
			return "fail";
		}	
		
	}
	
	//鑰佸笀娉ㄩ攢涓庢縺娲�
		public String EditTea(){
		
		if(ts.EditTeacher(tc.getTid())){
			List<Student> s=(List<Student>) ss.FindAllStudent() ;
			List<Teacher> t=(List<Teacher>) ts.FindAllTeacher() ;
		
              HttpServletRequest request=ServletActionContext.getRequest();
              request.setAttribute("Student", s);
              request.setAttribute("Teacher", t);
			return "success";
		}else{
			return "fail";
		}
		
		}
		
		//鑰佸笀淇℃伅
		public String TeaInfo(){
			if(ts.TeaInfo(tc.getTid())!=null){
				Teacher t=ts.TeaInfo(tc.getTid());
				HttpServletRequest request = ServletActionContext.getRequest();
				  request.setAttribute("Teacher", t);
				return "success";
			}else{
				return "fail";
			}
			
		}
		
		//淇敼鑰佸笀
		public String UpdateTea(){
			if(ts.UpdateTeacher(tc)){
				List<Student> s=(List<Student>) ss.FindAllStudent() ;
				List<Teacher> t=(List<Teacher>) ts.FindAllTeacher() ;
			
	              HttpServletRequest request=ServletActionContext.getRequest();
	              request.setAttribute("Student", s);
	              request.setAttribute("Teacher", t);
				return "success";
			}else{
				return "fail";
			}
		}
		//鍒犻櫎鑰佸笀
		public String DelTea(){
			if(ts.DelTeacher(tc.getTid())){
				List<Student> s=(List<Student>) ss.FindAllStudent() ;
				List<Teacher> t=(List<Teacher>) ts.FindAllTeacher() ;
	              HttpServletRequest request=ServletActionContext.getRequest();
	              request.setAttribute("Student", s);
	              request.setAttribute("Teacher", t);
	              return "success";
			}else{
				return "fail";
			}	
			
		}
}


