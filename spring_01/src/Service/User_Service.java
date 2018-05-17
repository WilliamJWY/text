package Service;

import Dao.User_Dao;
import Model.User;

public class User_Service {
User_Dao udao;

public void setUdao(User_Dao udao) {
	this.udao = udao;
}
public User TestUser(){
	return udao.TestUser();
}
public User findUser(int id){
	return udao.FindUser(id);
}

}
