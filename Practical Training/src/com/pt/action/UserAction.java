package com.pt.action;

import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	private int sid;
	private int tid;

	// 閸掔娀娅庣�锔炬晸
	public String DelStu() {
		if (ss.delStudent(stu.getSid())) {
			List<Student> s = (List<Student>) ss.FindAllStudent();
			List<Teacher> t = (List<Teacher>) ts.FindAllTeacher();
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("Student", s);
			session.setAttribute("Teacher", t);
			return "success";
		} else {
			return "fail";
		}

	}

	// 閸掔娀娅庨懓浣哥瑎
	public String DelTea() {
		if (ts.DelTeacher(tc.getTid())) {
			List<Student> s = (List<Student>) ss.FindAllStudent();
			List<Teacher> t = (List<Teacher>) ts.FindAllTeacher();
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("Student", s);
			session.setAttribute("Teacher", t);
			return "success";
		} else {
			return "fail";
		}

	}

	// 鐎涳妇鏁撳▔銊╂敘娑撳孩绺哄ú锟�
	public String EditStu() {

		if (ss.editStudent(stu.getSid())) {
			List<Student> s = (List<Student>) ss.FindAllStudent();
			List<Teacher> t = (List<Teacher>) ts.FindAllTeacher();
			System.out.println(s.get(1).getSstate());
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("Student", s);
			session.setAttribute("Teacher", t);
			return "success";
		} else {
			return "fail";
		}
	}

	// 閼颁礁绗�▔銊╂敘娑撳孩绺哄ú锟�
	public String EditTea() {

		if (ts.EditTeacher(tc.getTid())) {
			List<Student> s = (List<Student>) ss.FindAllStudent();
			List<Teacher> t = (List<Teacher>) ts.FindAllTeacher();

			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("Student", s);
			session.setAttribute("Teacher", t);
			return "success";
		} else {
			return "fail";
		}

	}
	
	// 鐎涳妇鏁撴穱鈩冧紖
	public String StuInfo() {

		if (ss.StuInfo(stu.getSid()) != null) {
			Student s = ss.StuInfo(stu.getSid());
			List<Teacher> t = (List<Teacher>) ts.FindAllTeacher();
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("Student", s);
			session.setAttribute("Teacher", t);
			return "success";
		} else {
			return "fail";
		}

	}

	// 閼颁礁绗�穱鈩冧紖
	public String TeaInfo() {
		if (ts.TeaInfo(tc.getTid()) != null) {
			Teacher t = ts.TeaInfo(tc.getTid());
			HttpServletRequest request = ServletActionContext.getRequest();
			request.setAttribute("Teacher", t);
			return "success";
		} else {
			return "fail";
		}

	}

	// 娣囶喗鏁肩�锔炬晸
	public String UpdateStu() {
		Student s = null;
		
		s = ss.StuInfo(sid);
		if (s == null) {
			return "fail";
		}
		s.setSname(stu.getSname());
		s.setSuser(stu.getSuser());
		s.setSstate(stu.getSstate());
		s.setSpass(stu.getSpass());
		s.setTid(stu.getTid());
		if (ss.updateStudent(s)) {
			List<Student> stu = (List<Student>) ss.FindAllStudent();
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("Student", stu);
			return "success";
		} else {
			return "fail";
		}
	}

	// 娣囶喗鏁奸懓浣哥瑎
	public String UpdateTea() {
		
		Teacher t=null;
		
		t=ts.TeaInfo(tid);
		if (t==null) {
			return "fail";
		}
	
		t.setRid(tc.getRid());
		t.setTname(tc.getTname());
		t.setTpass(tc.getTpass());
		t.setTstate(tc.getTstate());
		t.setJobid(tc.getJobid());
		
		if(ts.UpdateTeacher(t)){
			List<Teacher> tea = (List<Teacher>) ts.FindAllTeacher();
			HttpSession session = ServletActionContext.getRequest().getSession();
			session.setAttribute("Teacher", tea);
			return "success";
		}else {
			return "fail";
		}
	}


	public int getSid() {
		return sid;
	}

	public Student getStu() {
		return stu;
	}

	public Teacher getTc() {
		return tc;
	}

	public void setSid(int sid) {
		this.sid = sid;
	}

	public void setSs(StudentService ss) {
		this.ss = ss;
	}

	public void setStu(Student stu) {
		this.stu = stu;
	}

	public void setTc(Teacher tc) {
		this.tc = tc;
	}

	public void setTs(TeacherService ts) {
		this.ts = ts;
	}

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

}
