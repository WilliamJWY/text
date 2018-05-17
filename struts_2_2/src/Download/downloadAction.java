package Download;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import sun.misc.BASE64Encoder;

public class downloadAction extends ActionSupport {
String fileName;
String agent=ServletActionContext.getRequest().getHeader("user-agent");
public void setFileName(String fileName) throws UnsupportedEncodingException{
	this.fileName=new String (fileName.getBytes("ISO-8859-1"),"utf-8");
}
public String execute(){
	return "success";
}
public InputStream getInputStream() throws FileNotFoundException{
	File file=new File(ServletActionContext.getServletContext().getRealPath("/files")+"/"+fileName);
	System.out.println("InputStream");
	return new FileInputStream(file);
}
public String getContentType(){	
	System.out.println("getContentType");
	return ServletActionContext.getServletContext().getMimeType(fileName);
}
public String getFileName() throws UnsupportedEncodingException{
	return encodeDownloadFileName(fileName,agent);
}
public String encodeDownloadFileName(String fileName, String agent) throws UnsupportedEncodingException{
	if(agent.contains("fixfox")){
		fileName="=?utf-8?B?"+new BASE64Encoder().encode(fileName.getBytes("utf-8"))+"?=";
	}else{
		fileName=java.net.URLEncoder.encode(fileName,"utf-8");
	}
	return fileName;
}
}
