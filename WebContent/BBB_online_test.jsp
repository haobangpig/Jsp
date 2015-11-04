<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>agile - a free css template</title>
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
		Class.forName("com.mysql.jdbc.Driver");
		Connection con;
		Statement sql;
		ResultSet rs;
		con = DriverManager.getConnection(
				"jdbc:mysql://localhost:3306/test", "root", "haobang");
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
				<h3>Lists</h3>
				<h4>
					<ul>
						<li><a href="BBB_online_test_Java_quetionStep1(Arrays).jsp">Java
								Test</a></li>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<li><a href="BBB_online_test_CSS.jsp">CSS Test</a></li>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<li><a href="BBB_online_test_Linux.jsp">Linux Test</a></li>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<li><a href="BBB_online_test_PHP.jsp">PHP Test</a></li>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<li><a href="BBB_online_test_Python.jsp">Python Test</a></li>
						<p>&nbsp;</p>
						<p>&nbsp;</p>
						<li><a href="BBB_online_test_sql.jsp">sql Test</a></li>
					</ul>
			</article>


			<footer class="clear">
				<p>
					&copy; 2014 sitename. <a href="http://zypopwebtemplates.com/">Free
						CSS Templates</a> by ZyPOP
				</p>
			</footer>

		</section>

		<div class="clear"></div>

	</section>


</body>
</html>
