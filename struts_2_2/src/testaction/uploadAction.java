package testaction;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class uploadAction extends ActionSupport{
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
