package Dao_Imp;


import java.util.Date;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import Dao.Log_Dao;
import Dao.User_Dao;
import Model.Log;
import Model.User;

public class User_Dao_Imp extends HibernateDaoSupport implements User_Dao{

	/*Log_Dao ldao;
	public int add(User u) {
		this.getHibernateTemplate().save(u);
		Log l=new Log();
		l.setType("ÃÌº””√ªß");
		l.setDate(new Date());
		ldao.addLog(l);
		return 0;
	}*/

	@Override
	public int add(String string, String string2) {
		// TODO Auto-generated method stub
		return 0;
	}

	/*public void setLdao(Log_Dao ldao) {
		this.ldao = ldao;
	}
*/
	@Override
	public User TestUser() {
		User u=new User();
		u.setName("zhangsan");
		u.setPass(123);
		return u;
	}

	@Override
	public User FindUser(int id) {
		User u=(User) this.getHibernateTemplate().get(User.class, id);
		return u;
	}

	@Override
	public int add(User u) {
		// TODO Auto-generated method stub
		return 0;
	}

	


}
