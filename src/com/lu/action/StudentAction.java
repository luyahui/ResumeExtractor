package com.lu.action;

import java.util.ArrayList;
import java.util.List;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.convention.annotation.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.lu.domain.Student;
import com.lu.service.StudentService;
import com.lu.util.Page;

@ParentPackage("struts-default")
@Namespace("/")

@Controller
public class StudentAction extends BaseAction {

	private Page page = new Page();
	private String keyword;
	private List<Student> students;
	private Student student;

	@Autowired
	private StudentService studentService;

	@Action(value = "index", results = { @Result(name = "index", location = "/default.jsp") })
	public String index() {
		String hql = "from Student";
		int totalCount = new Integer(studentService.count("select count(*) " + hql).toString());
		page.setTotalCount(totalCount);

		students = studentService.find(hql, new ArrayList<>(), page.getPageNo(), page.getPageSize());
		requestMap.put("students", students);

		return "index";
	}

	@Action(value = "viewDetail", results = { @Result(name = "success", location = "/student.jsp") })
	public String viewDetail() {
		Student s = studentService.get(Student.class, student.getId());
		if (s == null)
			return "error";
		requestMap.put("student", s);
		return "success";
	}

	@Action(value = "delete", results = { @Result(name = "success", location = "/index", type = "redirect") })
	public String delete() {
		Student s = studentService.get(Student.class, student.getId());
		if (s == null)
			return "error";
		studentService.delete(s);
		return "success";
	}

	@Action(value = "update", results = { @Result(name = "success", location = "/student.jsp") })
	public String update() {
		Student s = studentService.get(Student.class, student.getId());
		if (s == null)
			return "error";
		studentService.saveOrUpdate(student);
		return "success";
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

}
