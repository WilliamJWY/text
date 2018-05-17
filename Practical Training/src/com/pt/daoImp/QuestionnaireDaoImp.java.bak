package com.pt.daoImp;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.pt.dao.QuestionnaireDao;
import com.pt.vo.Questionnaire;



public class QuestionnaireDaoImp extends HibernateDaoSupport implements QuestionnaireDao {

	public boolean addQuestionnaire(Questionnaire q) {
		boolean f=false;
		try{
			this.getHibernateTemplate().save(q);
			f=true;
		}catch(Exception e){
			e.printStackTrace();
		}
		return f;
	}

	public List<Questionnaire> findAllQuestionnaire() {
		List<Questionnaire> q=this.getHibernateTemplate().find("from Questionnaire");
		return q;
	}

}
