<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="JavaBean.LoginBean"%>
<%@ page import="java.util.ArrayList" %>
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
                            		<li><a href="BBB_main.jsp">Home</a></li>
                           		<li><a href="BBB_information.jsp">Information</a></li>
                           		<li><a href="BBB_contacts.jsp">Contacts</a></li>
                            		<li><a href="BBB_schedule.jsp">schedule</a></li>
                            		<li class="selected-item"><a href="BBB_personal_file.jsp">Personal File</a></li>
                            		<li><a href="BBB_online_test.jsp">Online Test</a></li>
                            		<li><a href="BBB_contact_us.jsp">Contact us</a></li>
                        	</ul>
			</nav>

			
			
			</aside>
			<section id="content" class="column-right">
             
	    <article>
				<h3>File List</h3>
				<table>
					<tr>
						<th>User Name</th>
						<th>File Name</th>
						<th>Download</th>
					</tr>
					<tr>
						<td>1</td>
						<td>John Smith</td>
						<td>28</td>

					</tr>
					<tr>
						<td>2</td>
						<td>Fred James</td>
						<td>49</td>
					</tr>
					<tr>
						<td>3</td>
						<td>Rachel Johnson</td>
						<td>19</td>
					</tr>
	
				</table>
				<p>&nbsp;</p>
		</article>

			
			<footer class="clear">
				<p>&copy; 2014 sitename. <a href="http://zypopwebtemplates.com/">Free CSS Templates</a> by ZyPOP</p>
			</footer>

		</section>

		<div class="clear"></div>

	</section>
	

</body>
</html>