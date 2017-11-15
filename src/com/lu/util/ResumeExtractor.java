package com.lu.util;

import java.io.File;
import java.io.IOException;
import org.apache.tika.Tika;
import org.apache.tika.exception.TikaException;
import com.lu.domain.Student;

public class ResumeExtractor {
	private String filepath;

	public ResumeExtractor(String filePath) {
		this.filepath = filePath;
	}

	public void extract() {
		// Using Tika
		Student student = new Student();
		Tika tika = new Tika();
		String text;
		try {
			text = tika.parseToString(new File(filepath));
			// System.out.println(text);
			// split the text into several lines
			String[] lines = text.split("\n\n");
			
			for (String line : lines) {
				if (line == "\n")
					continue;
				// line.replaceAll("\n", " ");
				// if (student.getAddress() == null)
				// student.setAddress(RegexTool.searchAddress(line));
				if (student.getPhone() == null)
					student.setPhone(RegexTool.searchPhone(line));
				if (student.getEmail() == null)
					student.setEmail(RegexTool.searchEmail(line));
			}
		} catch (IOException e) {
			e.printStackTrace();
		} catch (TikaException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
