package com.pt.dao;

import java.util.List;

import com.pt.vo.Questionnaire;

public interface QuestionnaireDao {
	public boolean addQuestionnaire(Questionnaire q);
	public List<Questionnaire> findAllQuestionnaire();
	public Questionnaire findQ(int rid);//通过rid查询问卷
	public Questionnaire FindQ(int qid);//通过问卷表的qid查询问卷
	public boolean editQ(Questionnaire q);
}
