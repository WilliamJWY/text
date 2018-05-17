package com.pt.service;

import java.util.List;

import com.pt.dao.TERDao;
import com.pt.vo.Teacher_evaluation_results;

public class TERService {
TERDao terdao;

public void setTerdao(TERDao terdao) {
	this.terdao = terdao;
}
public boolean addTER(Teacher_evaluation_results ter){
	return terdao.addTER(ter);
}
public List<Teacher_evaluation_results> findTER(String jobid){
	return terdao.findTER(jobid);
}
}
