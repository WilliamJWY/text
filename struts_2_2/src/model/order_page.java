package model;

import java.sql.Date;

import com.opensymphony.xwork2.ActionSupport;

public class order_page extends ActionSupport{
	String Document_type;
	String Identification_Number;
	String objective;
	Date C_Date;
	Date F_Date;
	public String register(){
		return "success";
	}
	public String getDocument_type() {
		return Document_type;
	}
	public void setDocument_type(String document_type) {
		Document_type = document_type;
	}
	public String getIdentification_Number() {
		return Identification_Number;
	}
	public void setIdentification_Number(String identification_Number) {
		Identification_Number = identification_Number;
	}
	public String getObjective() {
		return objective;
	}
	public void setObjective(String objective) {
		this.objective = objective;
	}
	public Date getC_Date() {
		return C_Date;
	}
	public void setC_Date(Date c_Date) {
		C_Date = c_Date;
	}
	public Date getF_Date() {
		return F_Date;
	}
	public void setF_Date(Date f_Date) {
		F_Date = f_Date;
	}
}
