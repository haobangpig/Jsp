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
                            		<li class="selected-item"><a href="BBB_main.jsp">Home</a></li>
                           		<li><a href="BBB_information.jsp">Information</a></li>
                           		<li><a href="BBB_contacts.jsp">Contacts</a></li>
                            		<li><a href="BBB_schedule.jsp">schedule</a></li>
                            		<li><a href="BBB_personal_file.jsp">Personal File</a></li>
                            		<li><a href="BBB_online_test.jsp">Online Test</a></li>
                            		<li><a href="BBB_contact_us.jsp">Contact us</a></li>
                        	</ul>
			</nav>

			
			
			</aside>
			<section id="content" class="column-right">
                		
	    <article>
	    <%
		
		String userTrueName=request.getParameter("user_trueName");
		String usergender=request.getParameter("user_gender");
		String userBirthday=request.getParameter("user_birth");
		String userNation=request.getParameter("user_nation");
		String userEdu=request.getParameter("user_edu");
		String userWork=request.getParameter("user_work");
		String userPhone=request.getParameter("user_phone");
		String userPlace=request.getParameter("user_place");
		String userEmail=request.getParameter("user_email");
		
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con;
		Statement sql;
		ResultSet rs;
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
		sql=con.createStatement();
		String sqlString="Update  BBB_user set user_trueName='"+userTrueName+"',user_gender='"+usergender+"',user_birth='"+userBirthday+"',user_nation='"+userNation+"',user_edu='"+userEdu+"',user_work='"+userWork+"',user_phone='"+userPhone+"',user_place='"+userPlace+"',user_email='"+userEmail+"' where user_name='"+userName+"'";
	    sql.executeUpdate(sqlString);
	    %>
	    
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
			<center>
			<h3>success!!</h3>
			<h4>back to the <a href="BBB_information.jsp">information page</a></h4>
			</center>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
		<p>&nbsp;</p>
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