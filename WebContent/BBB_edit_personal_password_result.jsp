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
			<cernter>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			<p>&nbsp;</p>
			
			
        <div align=center >    		
	    <article>
	    	
	    	
			<center>
				<%
				
				String userPassword=request.getParameter("oldPassword");
				String userPassword1=request.getParameter("newPassword");
				Class.forName("com.mysql.jdbc.Driver");
				Connection con;
				Statement sql;
				ResultSet rs;
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
				sql=con.createStatement();
				String sqlString="select * from BBB_user where user_name='"+userName+"'and user_password='"+userPassword+"'";
				rs=sql.executeQuery(sqlString);
				if(rs.next()){
					String sql123="Update BBB_user set user_password='"+userPassword1+"'where user_name='"+userName+"'";
					sql=con.createStatement();
					sql.executeUpdate(sql123);
					String a="BBB_main.jsp";
					out.println("<!DOCTYPE html><html><body>Success <a href="+a+">back to main page</a></body></html>");
				}else{
					String a="BBB_edit_personal_password.jsp";
					out.println("<!DOCTYPE html><html><body>Your old password is incorrect please <a href="+a+">try again</a></body></html>");
				}
				
				%>
			</center>
			</div>
				


				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				

</body>
</html>
