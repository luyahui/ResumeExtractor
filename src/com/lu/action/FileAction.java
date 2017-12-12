package com.lu.action;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.apache.commons.vfs2.FileName;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.InterceptorRef;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.lu.service.StudentService;
import com.lu.util.ResumeExtractor;

@ParentPackage("struts-default")
@Namespace("/")

@Controller
public class FileAction extends BaseAction {

	@Autowired
	private StudentService studentService;

	private File uploadfile;
	private String uploadfileFileName;
	private String uploadfileContentType;

	@Action(value = "upload", interceptorRefs = {
			@InterceptorRef(value = "fileUpload", params = { "allowedTypes", "application/msword, application/pdf" }),
			@InterceptorRef("defaultStack") }, results = {
					@Result(name = "success", location = "/index", type = "redirect"),
					@Result(name = "input", location = "/index", type = "redirect") })
	public String upload() {
		// set destination directory
		String realpath = ServletActionContext.getServletContext().getRealPath("/resumes");

		// check if the uploaded file is null
		if (uploadfile != null) {
			// set destination file path
			File savefile = new File(realpath, uploadfileFileName);
			if (!savefile.getParentFile().exists())
				savefile.getParentFile().mkdirs();
			try {
				FileUtils.copyFile(uploadfile, savefile);
				studentService.save(new ResumeExtractor(savefile.getAbsolutePath()).extract());
				return "success";
			} catch (IOException e) {
				e.printStackTrace();
			}
		}

		return "error";
	}

	public File getUploadfile() {
		return uploadfile;
	}

	public void setUploadfile(File uploadfile) {
		this.uploadfile = uploadfile;
	}

	public String getUploadfileFileName() {
		return uploadfileFileName;
	}

	public void setUploadfileFileName(String uploadfileFileName) {
		this.uploadfileFileName = uploadfileFileName;
	}

	public String getUploadfileContentType() {
		return uploadfileContentType;
	}

	public void setUploadfileContentType(String uploadfileContentType) {
		this.uploadfileContentType = uploadfileContentType;
	}

}
