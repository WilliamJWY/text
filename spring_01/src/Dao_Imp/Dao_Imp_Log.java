package Dao_Imp;


import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import Dao.Log_Dao;


public class Dao_Imp_Log extends HibernateDaoSupport implements Log_Dao{

	@Override
	public int addLog(Model.Log l) {
		this.getHibernateTemplate().save(l);
		return 0;
	}



}
