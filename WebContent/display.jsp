<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.jayram.Student" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		Student s = (Student)request.getAttribute("stud");
		out.print(s.getClass()+"<br>");
		out.print(s.getRollNo()+"<br>");
		out.print(s.getName()+"<br>");
	%>
</body>
</html>