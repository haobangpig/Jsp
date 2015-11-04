<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con;
			Statement sql;
			ResultSet rs;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
			sql=con.createStatement();
			String sqlString="select * from BBB_user";
			rs=sql.executeQuery(sqlString); %>
	<table border="6" width=60% cellpadding="10">
		<thead>
			<th colspan="10">
			the user list
			</th>
		</thead>
		<tbody>
		<tbody>
			<tr>
				<td>userName</td>
				<td>trueName</td>
				<td>gender</td>
				<td>birthday</td>
				<td>nationality</td>
				<td>education</td>
				<td>work</td>
				<td>phone</td>
				<td>place</td>
				<td>email</td>
			</tr>
				<%

				while (rs.next()){
				out.print("<tr>");
				out.print("<td>"+rs.getString("user_name")+"</td>");
				out.print("<td>"+rs.getString("user_trueName")+"</td>");
				out.print("<td>"+rs.getString("user_gender")+"</td>");
				out.print("<td>"+rs.getString("user_birth")+"</td>");
				out.print("<td>"+rs.getString("user_nation")+"</td>");
				out.print("<td>"+rs.getString("user_edu")+"</td>");
				out.print("<td>"+rs.getString("user_work")+"</td>");
				out.print("<td>"+rs.getString("user_phone")+"</td>");
				out.print("<td>"+rs.getString("user_place")+"</td>");
				out.print("<td>"+rs.getString("user_email")+"</td>");
				out.print("</tr>");
				}
				
				
				
				%>
				
				
				</tbody>
				</table>
				</center>

</body>
</html>