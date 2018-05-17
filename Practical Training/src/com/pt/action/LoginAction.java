package com.pt.action;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.pt.service.IndexService;
import com.pt.service.LoginService;
import com.pt.service.OptionService;
import com.pt.service.QuestionnaireService;
import com.pt.service.StudentService;
import com.pt.service.TeacherService;
import com.pt.vo.Index_c;
import com.pt.vo.Index_p;
import com.pt.vo.Option;
import com.pt.vo.Questionnaire;
import com.pt.vo.Student;
import com.pt.vo.Teacher;

public class LoginAction {
		LoginService ls;
		TeacherService ts;
		StudentService ss;
		IndexService is;
		QuestionnaireService qs;
		OptionService os;
		Student stu;
		Teacher tc;
		
		public void setIs(IndexService is) {
			this.is = is;
		}

		public void setSs(StudentService ss) {
			this.ss = ss;
		}
	
		public void setTs(TeacherService ts) {
			this.ts = ts;
		}

		
		
		public void setLs(LoginService ls) {
			this.ls = ls;
		}
		
	public void setOs(OptionService os) {
			this.os = os;
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
				Questionnaire q=qs.findQ(1);
				
				List<Index_c> ic=is.findOC(1);
				List<Teacher> t=(List<Teacher>) ts.FindAllTeacher() ;

				
				List<Student> s=ls.loginFindSt(stu.getSname());
				Student st=s.get(0);
				List<Option> op=os.findAllO();
				HttpSession session = ServletActionContext.getRequest().getSession();
				session.setAttribute("q",q);
				session.setAttribute("ic",ic);
				session.setAttribute("st",st);
				session.setAttribute("option",op);
				session.setAttribute("Teacher", t);
				return "success";
			}else{
				return "fail";
			}
		}
	//教师登陆	teacher_login
		public String LoginTeather(){
			
			if(ls.LoginTeancher(tc)){
				Questionnaire q=qs.findQ(2);
				List<Index_c> ic=is.findOC(2);
				Questionnaire qsl=qs.findQ(3);
				List<Index_c> icsl=is.findOC(3);
				List<Teacher> x=ls.loginFindTc(tc.getJobid());
				Teacher tch=x.get(0);
				List<Student> s=(List<Student>) ss.FindAllStudent() ;
				List<Teacher> t=(List<Teacher>) ts.FindAllTeacher() ;
				List<Option> op=os.findAllO();
				HttpSession session = ServletActionContext.getRequest().getSession();
				session.setAttribute("tc",tch);
				session.setAttribute("q",q);
				session.setAttribute("ic",ic);
				session.setAttribute("qsl",qsl);
				session.setAttribute("icsl",icsl);
				session.setAttribute("Student", s);
				session.setAttribute("Teacher", t);
				session.setAttribute("option",op);
				
				return "success";
			}else{
				return "fail";
			}
		}
		
		public String LoginLd(){
			
			if(ls.LoginLd(tc)){
				Questionnaire q=qs.findQ(4);
				List<Index_c> ic=is.findOC(4);
				List<Teacher> t=(List<Teacher>) ts.FindAllTeacher() ;
				List<Student> st=(List<Student>) ss.FindAllStudent() ;
				List<Teacher> s=ls.loginFindTc(tc.getJobid());
				List<Option> op=os.findAllO();
				Teacher tch=s.get(0);
				HttpSession session = ServletActionContext.getRequest().getSession();
				session.setAttribute("tc",tch);
				session.setAttribute("q",q);
				session.setAttribute("ic",ic);
				session.setAttribute("Teacher", t);
				session.setAttribute("Student", st);
				session.setAttribute("option",op);
				return "success";
			}else{
				return "fail";
			}
		}
		
		public String LoginGly(){
			System.out.println(tc.getJobid()+tc.getTpass()+"qqq");
			if(ls.LoginGly(tc)){
				List<Questionnaire> q=qs.findAllQuestionnaire();
				List<Teacher> x=ls.loginFindTc(tc.getJobid());
				List<Index_c> ic=is.findC();
				List<Index_p> ip=is.findAllP();
				Teacher tch=x.get(0);
				HttpSession session = ServletActionContext.getRequest().getSession();
				session.setAttribute("tc",tch);
				session.setAttribute("qn", q);
				session.setAttribute("ic",ic);
				session.setAttribute("ip",ip);
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
