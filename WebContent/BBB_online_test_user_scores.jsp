<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="JavaBean.LoginBean"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Index Page</title>
<link rel="stylesheet" href="css/styles3.css" type="text/css" />

<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>


<body>
<%	
String userName=(String)session.getAttribute("userName");
if(userName==null){
response.sendRedirect("BBB_index(system).jsp");
}

%>
		<section id="body" class="width">
			<aside id="sidebar" class="column-left">

			<header>
			<center>
				<h1><a href="BBB_main.jsp"><img  class="img1" src="images/Bookmark-Final-Logo.jpg"/></a></h1>
				<p><%=session.getAttribute("userName") %></p>
				</center>
				<h2>Welcome to my website!</h2>
				
				
			</header>

			<nav id="mainnav">
  				<ul>
                            		<li ><a href="BBB_main.jsp">Home</a></li>
                           		<li><a href="BBB_information.jsp">Information</a></li>
                                 <li class="selected-item"><a href="BBB_online_test.jsp">Online Test</a></li>
                            		<li><a href="BBB_contact_us.jsp">Contact us</a></li>
                        	</ul>
			</nav>

			
			
			</aside>
			<section id="content" class="column-right">
                		
	    <article>
				
			<%
			Class.forName("com.mysql.jdbc.Driver");
			Connection con;
			Statement sql;
			ResultSet rs;
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
			sql=con.createStatement();
			String sqlString="select * from BBB_test_Java_AutoRunning where username='"+userName+"'";
			rs=sql.executeQuery(sqlString); %>
			<center>
						<h1>Username:<%=userName%></h1>
						</center>
		<table>
		<tbody>
			<tr>
				<td>QuestionID</td>
				<td>Result</td>
				<td>Step</td>
				<td>Catalogue</td>
				<td>Time</td>
			</tr>
				<%

				while (rs.next()){
				out.print("<tr>");
				out.print("<td>"+rs.getString("questionID")+"</td>");
				out.print("<td>"+rs.getString("result")+"</td>");
				out.print("<td>"+rs.getString("step")+"</td>");
				out.print("<td>"+rs.getString("catalogue")+"</td>");
				out.print("<td>"+rs.getString("user_time")+"</td>");
				out.print("</tr>");
				}
				
				
				
				%>
				
				
				</tbody>
				</table>
		</article>

			
			<footer class="clear">
				<p>&copy; 2014 sitename. <a href="http://zypopwebtemplates.com/">Free CSS Templates</a> by ZyPOP</p>
			</footer>

		</section>

		<div class="clear"></div>

	</section>
	

</body>
</html>