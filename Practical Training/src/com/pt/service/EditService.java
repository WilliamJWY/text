package com.pt.service;

import com.pt.dao.editDao;

public class EditService {
editDao edao;

public void setEdao(editDao edao) {
	this.edao = edao;
}
public boolean updatespass(int sid,String spass){
	return edao.updatespass(sid, spass);
}
public boolean updatetpass(int tid,String tpass){
	return edao.updatetpass(tid, tpass);
}
}
