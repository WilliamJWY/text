package Validate;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import java.sql.Date;

import com.opensymphony.xwork2.ActionSupport;



public class ValidateAction extends ActionSupport{
	String Username;
	String pass;
    int age;
    String sex;
    Date birth;
    private File file;
    private String fileFileName;
    private String fileContentType;
    public String execute() throws Exception{
    	String path = ServletActionContext.getServletContext().getRealPath("/file"+"/"+getFileFileName());
    	System.out.println(path);
    	File destFile=new File(path);
    	FileUtils.copyFile(file, destFile);
    	return "success";
    	
    }
	
	public String getUsername() {
		return Username;
	}

	public void setUsername(String username) {
		Username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public Date getBirth() {
		return birth;
	}

	public void setBirth(Date birth) {
		this.birth = birth;
	}

	public File getFile() {
		return file;
	}

	public void setFile(File file) {
		this.file = file;
	}

	public String getFileFileName() {
		return fileFileName;
	}

	public void setFileFileName(String fileFileName) {
		this.fileFileName = fileFileName;
	}

	public String getFileContentType() {
		return fileContentType;
	}

	public void setFileContentType(String fileContentType) {
		this.fileContentType = fileContentType;
	}

}
