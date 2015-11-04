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
<%
		long user_id;
		user_id=Long.parseLong(request.getParameter("user_id"));
		String sqlString="select * from BBB_test_Java_File_Input_Output where id="+user_id;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con;
		Statement sql;
		ResultSet rs;
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
		sql=con.createStatement();
		
		rs=sql.executeQuery(sqlString);
		rs.next();
	%>
<center>
	<form method="POST" action="super_onlineTestEditPage(File)_success.jsp" name="form1" onSubmit="return on_submit()">
		<table border="10" width=60% cellpadding="10">
			<thead >
				<th colspan="2">Question</th>		
			</thead>
			<input type="hidden" name="user_id" value="<%=user_id%>">
			<tr>
				<td>Question:</td>
				<td><input type="text" name="question" maxlength="300" value="<%=rs.getString("question")%>" /></td>
			</tr>
			<tr>
				<td>A:</td>
				<td><input type="text" name="A" value="<%=rs.getString("A")%>" /></td>
			</tr>
			<tr>
				<td>B:</td>
				<td><input type="text" name="B" value="<%=rs.getString("B")%>" /></td>
			</tr>
			<tr>
				<td>C:</td>
				<td><input type="text" name="C" value="<%=rs.getString("C")%>" /></td>
			</tr>
			<tr>
				<td>D:</td>
				<td><input type="text" name="D" value="<%=rs.getString("D")%>" /></td>
			</tr>
			<tr>
				<td>answer</td>
				<td><input type="text" name="answer" value="<%=rs.getString("answer")%>" /></td>
			</tr>
			<tr>
				<td><input type="submit" name="submit" value="submit"></td>
				<td><input type="reset" name="reset" value="reset"></td>
			</tr>


		</table>
	</form>
	</center>
</body>
</html>