package com.lu.test;

import java.util.ArrayList;
import java.util.List;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.lu.domain.Student;
import com.lu.service.StudentService;
import com.lu.util.ResumeExtractor;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class Initialization {

	@Autowired
	private StudentService studentService;

	@Before
	public void init() {

	}

	@Test
	public void testStudent() {
		System.out.println("hello world!");
		Student student = new Student();
		student.setName("Yahui Lu");
		student.setPhone("(201) 310-1567");
		student.setEmail("ylu38@stevens.edu");
		studentService.save(student);
	}

	@Test
	public void testPdf() {
		String filePath = "/Users/javie/Downloads/Yahui Lu Resume.docx";
//		studentService.save(new ResumeExtractor(filePath).extract());
		Student student = new ResumeExtractor(filePath).extract();
	}
	
	@Test
	public void testSearch() {
		// TODO Auto-generated method stub
		String hql = "from Student where (name like '%yahui%')";
//		List<Object> param = new ArrayList<>();
//		param.add("%Yahui%");
		List<Student> students = studentService.find(hql);
//		System.out.println(students.size());
		System.out.println(studentService.count("select count(*) " + hql));
	}

	@After
	public void destroy() {

	}
}
