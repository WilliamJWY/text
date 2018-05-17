package Dao_Imp;

import Dao.User_Dao;
import Model.User;



public class Dao_Imp_oracle implements User_Dao{
	public int add(User u){
		System.out.println("addUserMysql success");
		return 0;
	}

	@Override
	public int add(String string, String string2) {
		// TODO Auto-generated method stub
		return 0;
	}
}
