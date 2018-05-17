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
	
	public Questionnaire findQ(int rid){
		return qdao.findQ(rid);
	}
	
	public Questionnaire FindQ(int qid){
		return qdao.FindQ(qid);
	}
	
	public boolean EditQuestionnaire(Questionnaire q){
		return qdao.editQ(q);
	}
}
