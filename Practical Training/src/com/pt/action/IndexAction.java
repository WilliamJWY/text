package com.pt.action;

import java.util.List;

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

public class IndexAction {
Index_c i;
Index_p ip;
IndexService is;
LoginService ls;
TeacherService ts;
StudentService ss;
QuestionnaireService qs;
OptionService os;
Teacher tc;
public Index_p getIp() {
	return ip;
}
public void setIp(Index_p ip) {
	this.ip = ip;
}
public Index_c getI() {
	return i;
}
public void setI(Index_c i) {
	this.i = i;
}
public void setIs(IndexService is) {
	this.is = is;
}
public void setLs(LoginService ls) {
	this.ls = ls;
}
public void setTs(TeacherService ts) {
	this.ts = ts;
}
public void setSs(StudentService ss) {
	this.ss = ss;
}
public void setQs(QuestionnaireService qs) {
	this.qs = qs;
}
public void setOs(OptionService os) {
	this.os = os;
}
public Teacher getTc() {
	return tc;
}
public void setTc(Teacher tc) {
	this.tc = tc;
}
public String addIndex(){
	if(is.addIndex(i)){
		List<Index_c> ic=is.findC();
		List<Index_p> ip=is.findAllP();
		List<Questionnaire> q=qs.findAllQuestionnaire();
		
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("ic",ic);
		session.setAttribute("ip",ip);
		session.setAttribute("qn", q);
		return "success";
	}else{
		return "fail";
	}
}
public String addIndexP(){
	if(is.addIndexP(ip)){
		List<Index_c> ic=is.findC();
		List<Index_p> ip=is.findAllP();
		List<Questionnaire> q=qs.findAllQuestionnaire();
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("ic",ic);
		session.setAttribute("ip",ip);
		session.setAttribute("qn", q);
		return "success";
	}else{
		return "fail";
	}
}
public String DelOption(){
	if(is.DelIndex_c(i.getIid())){
		List<Questionnaire> q=qs.findAllQuestionnaire();
		List<Index_c> ic=is.findC();
		List<Index_p> ip=is.findAllP();
		HttpSession session = ServletActionContext.getRequest().getSession();
		session.setAttribute("qn", q);
		session.setAttribute("ic",ic);
		session.setAttribute("ip",ip);

		return "success";
	}else{
		return "fail";
	}
	
}
}
