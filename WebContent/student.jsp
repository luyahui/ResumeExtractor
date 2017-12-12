<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Student</title>
</head>
<body>
	<form action="update" method="post">
		<input type="hidden" name="student.id"
			value="<s:property value="%{#attr.student.id}"/>" /> Name: <input
			type="text" name="student.name"
			value="<s:property value="%{#attr.student.name}"/>" /> <br>
		Phone: <input type="text" name="student.phone"
			value="<s:property value="%{#attr.student.phone}"/>" /> <br>
		Email: <input type="text" name="student.email"
			value="<s:property value="%{#attr.student.email}"/>" /> <br>
		Education: <input type="text" name="student.education"
			value="<s:property value="%{#attr.student.education}"/>" /> <br>
		Major: <input type="text" name="student.major"
			value="<s:property value="%{#attr.student.major}"/>" /> <br>
		<input type="submit" value="update" />
	</form>
</body>
</html>