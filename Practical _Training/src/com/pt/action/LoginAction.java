package com.pt.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.pt.service.LoginService;
import com.pt.service.QuestionnaireService;
import com.pt.service.StudentService;
import com.pt.service.TeacherService;
import com.pt.vo.Questionnaire;
import com.pt.vo.Student;
import com.pt.vo.Teacher;

public class LoginAction {
		LoginService ls;
		TeacherService ts;
		StudentService ss;
		QuestionnaireService qs;
		Student stu;
		Teacher tc;
		
		public void setSs(StudentService ss) {
			this.ss = ss;
		}
	
		public void setTs(TeacherService ts) {
			this.ts = ts;
		}

		
		
		public void setLs(LoginService ls) {
			this.ls = ls;
		}
		
	public Student getStu() {
			return stu;
		}
		public void setStu(Student stu) {
			this.stu = stu;
		}
		
		
	public void setQs(QuestionnaireService qs) {
			this.qs = qs;
		}

	public Teacher getTc() {
			return tc;
		}
		
		public void setTc(Teacher tc) {
			this.tc = tc;
		}
		//学生登陆 student_login
		public String LoginStudent(){
			
			if(ls.LoginStudent(stu)){
				List<Teacher> t=(List<Teacher>) ts.FindAllTeacher() ;
				HttpServletRequest request=ServletActionContext.getRequest();
				request.setAttribute("Teacher", t);
				List<Student> s=ls.loginFindSt(stu.getSname());
				Student st=s.get(0);
				
				HttpSession session = ServletActionContext.getRequest().getSession();
				session.setAttribute("st",st);
				return "success";
			}else{
				return "fail";
			}
		}
	//教师登陆	teacher_login
		public String LoginTeather(){
			
			if(ls.LoginTeancher(tc)){
				List<Teacher> x=ls.loginFindTc(tc.getJobid());
				Teacher tch=x.get(0);
				HttpSession session = ServletActionContext.getRequest().getSession();
				session.setAttribute("tc",tch);

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
		
		public String LoginLd(){
			
			if(ls.LoginLd(tc)){
				List<Teacher> s=ls.loginFindTc(tc.getJobid());
				Teacher tch=s.get(0);
				HttpSession session = ServletActionContext.getRequest().getSession();
				session.setAttribute("tc",tch);
				return "success";
			}else{
				return "fail";
			}
		}
		
		public String LoginGly(){
			
			if(ls.LoginGly(tc)){
				List<Questionnaire> q=qs.findAllQuestionnaire();
				List<Teacher> x=ls.loginFindTc(tc.getJobid());
				Teacher tch=x.get(0);
				HttpSession session = ServletActionContext.getRequest().getSession();
				session.setAttribute("tc",tch);
				session.setAttribute("qn", q);
				List<Student> s=(List<Student>) ss.FindAllStudent() ;
				List<Teacher> t=(List<Teacher>) ts.FindAllTeacher() ;
				
	           
				session.setAttribute("Student",s);
				session.setAttribute("Teacher",t);
				return "success";
			}else{
				return "fail";
			}
		}
}
