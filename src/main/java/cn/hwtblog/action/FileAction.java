package cn.hwtblog.action;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
public class FileAction extends ActionSupport {
	private String fileName;
	private File upFile;
	private String upFileFileName; // 封装上传文件属性
	private String upFileContentType;     // 封装上传文件类型的属性
	public String oneUp() throws IOException {
        // 上传文件的保存位置在“/image”,该位置在tomcat服务器的“webapps”之中
        String  realpath= ServletActionContext.getServletContext().getRealPath("/upLoadFiles");
        File file = new File(realpath);
        if(!file.exists())file.mkdirs();

        // 实现文件上传，也就是做了一个方法调用～
        FileUtils.copyFile(upFile,new File(file,upFileFileName));
        return SUCCESS;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public File getUpFile() {
		return upFile;
	}
	public void setUpFile(File upFile) {
		this.upFile = upFile;
	}
	public String getUpFileFileName() {
		return upFileFileName;
	}
	public void setUpFileFileName(String upFileFileName) {
		this.upFileFileName = upFileFileName;
	}
	public String getUpFileContentType() {
		return upFileContentType;
	}
	public void setUpFileContentType(String upFileContentType) {
		this.upFileContentType = upFileContentType;
	}  
    
}
