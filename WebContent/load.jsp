<%@page import="com.jayram.Student"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		/*
		Student st = new Student();
		int rollno = Integer.parseInt(request.getParameter("rollno"));
		String name = request.getParameter("name");
		
		st.setName(name);
		st.setRollNo(rollno);
		
		session.setAttribute("stud", st);
		
		RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
		rd.forward(request, response);
		*/
	%>
	
	<jsp:useBean id="st" class="com.jayram.Student" scope="session"></jsp:useBean>
	<jsp:setProperty property="rollNo" name="st" value= '<%= Integer.parseInt(request.getParameter("rollno"))%>'/>
	<jsp:setProperty property="name" name="st" value= '<%= request.getParameter("name")%>'/>
	
	<%
		RequestDispatcher rd = request.getRequestDispatcher("display.jsp");
		rd.forward(request, response);
	%>
</body>
</html>