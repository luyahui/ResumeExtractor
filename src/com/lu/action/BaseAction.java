package com.lu.action;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.util.ServletContextAware;

import com.opensymphony.xwork2.ActionSupport;

/**
 * 
 * @author Administrator
 * 
 */
public class BaseAction extends ActionSupport implements RequestAware,
		SessionAware, ApplicationAware, ServletRequestAware,
		ServletContextAware {
	// struts API
	public Map<String, Object> requestMap;
	public Map<String, Object> sessionMap;
	public Map<String, Object> applicationMap;
	// servlet API
	public HttpServletRequest httpRequest;
	public HttpSession httpSession;
	public ServletContext httpApplication;

	public void setRequest(Map<String, Object> requestMap) {
		this.requestMap = requestMap;
	}
	
	public void setSession(Map<String, Object> sessionMap) {
		this.sessionMap = sessionMap;
	}

	public void setApplication(Map<String, Object> applicationMap) {
		this.applicationMap = applicationMap;
	}

	public void setServletRequest(HttpServletRequest httpRequest) {
		this.httpRequest = httpRequest;
		httpSession = httpRequest.getSession();
	}

	public void setServletContext(ServletContext httpApplication) {
		this.httpApplication = httpApplication;
	}

}
