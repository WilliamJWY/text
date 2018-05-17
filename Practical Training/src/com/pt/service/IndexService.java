package com.pt.service;

import java.util.List;

import com.pt.dao.IndexDao;
import com.pt.vo.Index_c;
import com.pt.vo.Index_p;

public class IndexService {
IndexDao idao;

public void setIdao(IndexDao idao) {
	this.idao = idao;
}
public boolean addIndex(Index_c i){
	return idao.addIndex(i);
}
public boolean addIndexP(Index_p ip){
	return idao.addIndexP(ip);
}
public List<Index_p> findAllP(){
	return idao.findAllP();
}
public List<Index_c> findC(){
	return idao.findC();
}
public List<Index_c> findOC(int rid){
	return idao.findOC(rid);
}
public  boolean DelIndex_c(int iid){
	return idao.delIndex_c(iid);
}
}
