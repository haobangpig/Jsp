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
				Class.forName("com.mysql.jdbc.Driver");
				Connection con;
				Statement sql;
				ResultSet rs;
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
				sql=con.createStatement();
			
	%>
	<center>
	<%
				rs=sql.executeQuery("select * from BBB_test_Java_question");
				
	%>
	<table border="6" width=60% cellpadding="10">
		<thead>
			<th colspan="10">
			the user list
			</th>
		</thead>
		<tbody>
			<tr>
				<td>Question</td>
				<td>id</td>
				<td>A</td>
				<td>B</td>
				<td>C</td>
				<td>D</td>
				<td>answer</td>
				<td>catalogue</td>
				<td>Update</td>
			</tr>
				<%

				while (rs.next()){
				out.print("<tr>");
				out.print("<td>"+rs.getInt("questionID")+"</td>");
				out.print("<td>"+rs.getString("question")+"</td>");
				out.print("<td>"+rs.getString("A")+"</td>");
				out.print("<td>"+rs.getString("B")+"</td>");
				out.print("<td>"+rs.getString("C")+"</td>");
				out.print("<td>"+rs.getString("D")+"</td>");
				out.print("<td>"+rs.getString("answer")+"</td>");
				out.print("<td>"+rs.getString("Catalogue")+"</td>");
				out.print("<td><a href='super_questionEditPage.jsp?questionID="+rs.getInt("questionID")+"'>Update</a></td>");
				out.print("</tr>");
				}
				
				
				
				%>
				
				
				</tbody>
				</table>
			
				<p>Add new question ?
				<a href="super_addNewQuestion.jsp">Click here</a></p>
					</center>
</body>
</html>