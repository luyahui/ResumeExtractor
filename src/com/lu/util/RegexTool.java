package com.lu.util;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 
 * @author Yahui
 *
 */
public class RegexTool {

	/**
	 * Search the address information in the text
	 * 
	 * @param text
	 * @return
	 */
	public static String searchAddress(String text) {
		String address = null;
		String[] patterns = {};
		for (String pattern : patterns) {
			Pattern r = Pattern.compile(pattern);
			Matcher m = r.matcher(text);
			if (m.find()) {
				address = m.group();
				break;
			}
		}

		return address;
	}

	/**
	 * Search the email information in the text
	 * 
	 * @param text
	 * @return
	 */
	public static String searchEmail(String text) {
		String email = null;
		String pattern = "([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)";

		Pattern r = Pattern.compile(pattern);
		Matcher m = r.matcher(text);
		if (m.find()) {
			email = m.group();
		}
		return email;
	}

	/**
	 * Search the phone number in the text
	 * 
	 * @param text
	 * @return
	 */
	public static String searchPhone(String text) {
		String phone = null;
		String[] patterns = { "((\\(\\d{3}\\) ?)|(\\d{3}-))?\\d{3}-\\d{4}",
				"[\\(]{0,1}([0-9]){3}[\\)]{0,1}[ ]?([^0-1]){1}([0-9]){2}[ ]?[-]?[ ]?([0-9]){4}[ ]*((x){0,1}([0-9]){1,5}){0,1}" };
		for (String pattern : patterns) {
			Pattern r = Pattern.compile(pattern);
			Matcher m = r.matcher(text);
			if (m.find()) {
				phone = m.group();
				break;
			}
		}
		return phone;
	}

	/**
	 * Search the university name in the text
	 */
	public static String searchUniversity(String text) {
		String university = null;
		String[] patterns = {
				"([A-Z][^\\s,.]+[.]?\\s[(]?)*(College|University|Institute|Law School|School of|Academy)[^,\\d]*(?=,|\\d)" };

		for (String pattern : patterns) {
			Pattern r = Pattern.compile(pattern);
			Matcher m = r.matcher(text);
			if (m.find()) {
				university = m.group();
				break;
			}
		}
		return university;
	}

	/**
	 * Search the major in the text
	 */
	public static String searchMajor(String text) {
		String major = null;
		if (text.toLowerCase().contains("business intelligence and analytics")) {
			major = "Business Intelligence and Analytics";
			return major;
		}
		if (text.toLowerCase().contains("chemical engineering")) {
			major = "Chemical Engineering";
			return major;
		}
		if (text.toLowerCase().contains("chemistry")) {
			major = "Chemistry";
			return major;
		}
		if (text.toLowerCase().contains("civil engineering")) {
			major = "Civil Engineering";
			return major;
		}
		if (text.toLowerCase().contains("computer engineering")) {
			major = "Computer Engineering";
			return major;
		}
		if (text.toLowerCase().contains("computer science")) {
			major = "Computer Science";
			return major;
		}
		if (text.toLowerCase().contains("construction management")) {
			major = "Construction Management";
			return major;
		}
		if (text.toLowerCase().contains("electrical engineering")) {
			major = "Electrical Engineering";
			return major;
		}
		if (text.toLowerCase().contains("engineering management")) {
			major = "Engineering Management";
			return major;
		}
		if (text.toLowerCase().contains("enterprise systems")) {
			major = "Enterprise Systems";
			return major;
		}
		if (text.toLowerCase().contains("financial engineering")) {
			major = "Financial Engineering";
			return major;
		}
		if (text.toLowerCase().contains("finance")) {
			major = "Finance";
			return major;
		}
		if (text.toLowerCase().contains("information systems")) {
			major = "Information Systems";
			return major;
		}
		if (text.toLowerCase().contains("management")) {
			major = "Management";
			return major;
		}
		if (text.toLowerCase().contains("materials engineering")) {
			major = "Materials Engineering";
			return major;
		}
		if (text.toLowerCase().contains("mathematics")) {
			major = "Mathematics";
			return major;
		}
		if (text.toLowerCase().contains("mechanical engineering")) {
			major = "Mechanical Engineering";
			return major;
		}
		if (text.toLowerCase().contains("ocean engineering")) {
			major = "Ocean Engineering";
			return major;
		}
		if (text.toLowerCase().contains("software engineering")) {
			major = "Software Engineering";
			return major;
		}
		if (text.toLowerCase().contains("systems engineering")) {
			major = "Systems Engineering";
			return major;
		}
		return major;
	}
}
