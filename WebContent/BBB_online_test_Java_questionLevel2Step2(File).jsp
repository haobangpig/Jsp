<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Level.2</title>
<link rel="stylesheet" href="css/styles3.css" type="text/css" />

<meta name="viewport"
	content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>

<body>
	<%
		String userName = (String) session.getAttribute("userName");
		if (userName == null) {
			response.sendRedirect("BBB_index(system).jsp");
		}
	%>
	<section id="body" class="width">
		<aside id="sidebar" class="column-left">

			<header>
				<center>
					<h1>
						<a href="BBB_main.jsp"><img class="img1"
							src="images/Bookmark-Final-Logo.jpg" /></a>
					</h1>
					<p><%=session.getAttribute("userName")%></p>
				</center>
				<h2>Welcome to my website!</h2>


			</header>
			<nav id="mainnav">
				<ul>
					<li><a href="BBB_main.jsp">Home</a></li>
					<li><a href="BBB_information.jsp">Information</a></li>
			
					<li class="selected-item"><a href="BBB_online_test.jsp">Online
							Test</a></li>
					<li><a href="BBB_contact_us.jsp">Contact us</a></li>
				</ul>
			</nav>



		</aside>
		<section id="content" class="column-right">

			<article>
				<center>
					<h1>Personal Information</h1>
					<form action="BBB_online_test_Java_Level2_Step2score.jsp"
						method="post" name="form2" onsubmit="return on_check()">
						<table>
							<tbody>


								<%
									Class.forName("com.mysql.jdbc.Driver");
									Connection con;
									Statement sql;
									ResultSet rs;
									con = DriverManager.getConnection(
											"jdbc:mysql://localhost:3306/test", "root", "haobang");
									sql = con.createStatement();
									String sql123 = "select * from BBB_test_Java_AutoRunning where step=1 and catalogue= 'File'";
									rs = sql.executeQuery(sql123);
									int TRUE = 0;
									int FALSE = 0;
									int key = 0;
									while (rs.next()) {
										if (rs.getString("result") != null) {
											if (rs.getInt("result") == 1) {
												TRUE = TRUE + 1;

											}
											if (rs.getInt("result") == 0) {
												FALSE = FALSE + 1;

											}
										}
									}
									out.println("<br>");
								%>
								<%!public int getMax(int TRUE, int FALSE) {
		int i;
		if (TRUE > FALSE) {
			i = 3;

		} else {
			i = 6;

		}
		return i;
	}%>
								<%
									int max = getMax(TRUE, FALSE);
									if (max == 3) {
										key = 1;
									} else {
										key = 2;
									}

									sql = con.createStatement();
									String sqlString = "select * from  BBB_test_Java_File_Intput_Output_level2";
									rs = sql.executeQuery(sqlString);
									
									out.println(max);
									for (int i = 1; i <= max; i++) {
										rs.next();
								%>
								<tr>
									<td><h4><%=i%>.<%=rs.getString("question")%></h4></td>
								</tr>
								<tr>
									<td><input type="radio" name="<%=i%>" value="A">A:<%=rs.getString("A")%></td>
								</tr>
								<tr>
									<td><input type="radio" name="<%=i%>" value="B">B:<%=rs.getString("B")%></td>
								</tr>
								<tr>
									<td><input type="radio" name="<%=i%>" value="C">C:<%=rs.getString("C")%></td>
								</tr>
								<tr>
									<td><input type="radio" name="<%=i%>" value="D">D:<%=rs.getString("D")%></td>
								</tr>
								<tr>
									<td><input type="hidden" name="<%=i%>" value="0"></td>
								</tr>


								<%
									}
									
								%>

								<input type="hidden" name="user_id" value="<%=max%>">
								<input type="hidden" name="key" value="<%=key%>">
								<tr>
									<td><input type="submit" name="submit"></td>
								</tr>
							</tbody>


							</center>




							</article>





							</section>

							<div class="clear"></div>

							</section>
</body>
</html>
