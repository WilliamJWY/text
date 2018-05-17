package com.pt.service;

import java.util.List;

import com.pt.dao.SERDao;
import com.pt.vo.Student_evaluation_results;

public class SERService {
SERDao serdao;

public void setSerdao(SERDao serdao) {
	this.serdao = serdao;
}
public boolean addSER(Student_evaluation_results ser){
	return serdao.addSER(ser);
}
public List<Student_evaluation_results> findSER(int tid){
	return serdao.findSER(tid);
}
}
