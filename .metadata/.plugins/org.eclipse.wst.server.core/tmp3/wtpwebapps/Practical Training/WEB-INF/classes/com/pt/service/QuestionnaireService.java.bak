package com.pt.service;

import java.util.List;

import com.pt.dao.QuestionnaireDao;
import com.pt.vo.Questionnaire;



public class QuestionnaireService {
	QuestionnaireDao qdao;

	
	public void setQdao(QuestionnaireDao qdao) {
		this.qdao = qdao;
	}


	public boolean addQuestionnaire(Questionnaire q){
		return qdao.addQuestionnaire(q);
	}
	
	public List<Questionnaire> findAllQuestionnaire(){
		return qdao.findAllQuestionnaire();
	}
}
