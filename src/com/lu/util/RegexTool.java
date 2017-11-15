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
	
}
