package Dao_Imp;

import Dao.User_Dao;
import Model.User;

public class Dao_Imp_mysql_prox implements User_Dao {
User_Dao udao;
public 	Dao_Imp_mysql_prox(User_Dao udao){
	this.udao=udao;
}
public int add(User u){
	checkSecurity();
	this.udao.add(u);
	return 0;
}
public int update(User u){
	checkSecurity();
	this.udao.equals(u);
	return 0;
}

private int checkSecurity() {
	return 0;
	
}
@Override
public int add(String string, String string2) {
	// TODO Auto-generated method stub
	return 0;
}
}
