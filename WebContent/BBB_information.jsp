<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>agile - a free css template</title>
<link rel="stylesheet" href="css/styles3.css" type="text/css" />

<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>

<body>
<%	String userName=(String)session.getAttribute("userName");
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
                           			<li class="selected-item"><a href="BBB_information.jsp">Information</a></li>
                       
                            		<li><a href="BBB_online_test.jsp">Online Test</a></li>
                            		<li><a href="BBB_contact_us.jsp">Contact us</a></li>
                </ul>
			</nav>

			
			
			</aside>
			<section id="content" class="column-right">
                		
	    <article>
				

				<h1>Edit Personal Information</h1>
				<h3><a href="BBB_change_personal_information.jsp">Click here</a></h3>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>

				
				<h2>Personal Information</h1>
				<h3><a href="BBB_edit_personal_information.jsp">Click here</a></h3>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>

				
					
				<h1>Change Password</h1>
				<h3><a href="BBB_edit_personal_password.jsp">Click here</a></h3>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>

				
				
				
			<footer class="clear">
				<p>&copy; 2014 sitename. <a href="http://zypopwebtemplates.com/">Free CSS Templates</a> by ZyPOP</p>
			</footer>

		</section>

		<div class="clear"></div>

	</section>
	

</body>
</html>
