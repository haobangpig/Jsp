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
	String question=request.getParameter("question");
	String A=request.getParameter("A");
	String B=request.getParameter("B");
	String C=request.getParameter("C");
	String D=request.getParameter("D");
	String answer=request.getParameter("answer");
	
	String sqlString="insert into BBB_test_Java_File_Intput_Output_level2  (question, A ,B ,C,D,answer)"+"values('"+question+"','"+A+"','"+B+"','"+C+"','"+D+"','"+answer+"')";
	Class.forName("com.mysql.jdbc.Driver");
	Connection con;
	Statement sql;
	ResultSet rs;
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
	sql=con.createStatement();
	sql.executeUpdate(sqlString);
	
	
	%>
	
	
	<p>success! back to the edit page <a href="super_onlineTestEdit(File_level2).jsp">click here</a></p>
</body>
</html>