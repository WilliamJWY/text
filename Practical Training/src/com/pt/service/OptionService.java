package com.pt.service;

import java.util.List;

import com.pt.dao.OptionDao;
import com.pt.vo.Option;

public class OptionService {
OptionDao odao;

public void setOdao(OptionDao odao) {
	this.odao = odao;
}
public boolean addOption(Option o){
	return odao.addOption(o);
}
public List<Option> findO(int iid){
	return odao.findO(iid);
}
public boolean updateOption(Option o){
	return odao.updateOption(o);
}
public List<Option> findAllO(){
	return odao.findAllO();
}

}
