package com.pt.action;

import com.pt.service.QuestionnaireService;
import com.pt.vo.Questionnaire;

public class QuestionnaireAction {
	Questionnaire q;

	public Questionnaire getQ() {
		return q;
	}

	public void setQ(Questionnaire q) {
		this.q = q;
	}
	QuestionnaireService qs;

	public void setQs(QuestionnaireService qs) {
		this.qs = qs;
	}
	public String addQuestionnaire(){
		
		if(qs.addQuestionnaire(q)){
			return "success";
		}else{
			return "fail";
		}
	}

}
