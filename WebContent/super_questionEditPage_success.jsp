<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	long questionID=Long.parseLong(request.getParameter("questionID"));
	String question=request.getParameter("question");
	String A=request.getParameter("A");
	String B=request.getParameter("B");
	String C=request.getParameter("C");
	String D=request.getParameter("D");
	String answer=request.getParameter("answer");
	String Catalogue=request.getParameter("Catalogue");
	String sqlString="update BBB_test_Java_question set question='"+question
			+"',A='"+A
			+"',B='"+B
			+"',C='"+C
			+"',D='"+D
			+"',answer='"+answer
			+"',Catalogue='"+Catalogue
			+"'where questionID="+questionID;
	Connection con;
	Statement sql;
	ResultSet rs;
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
	sql=con.createStatement();
	sql.executeUpdate(sqlString);
%>
<p>successful!</p>
<a href="super_question.jsp">check here to back </a>
</body>
</html>