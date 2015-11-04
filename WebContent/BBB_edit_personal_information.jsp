<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
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
				<%
					Class.forName("com.mysql.jdbc.Driver");
					Connection con;
					Statement sql;
					ResultSet rs;
					con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
					sql=con.createStatement();
				
					//String userName=(String)session.getAttribute("userName");
					String sqlString="select * from BBB_user where user_name='"+userName+"'";
					rs=sql.executeQuery(sqlString);
					if(rs.next()){
						%>
						<center>
						<h1>Personal Information</h1>
						</center>
						<table>							
						<tbody>
							<tr>
								<td>UserName:</td>
								<td><%=rs.getString("user_name")%></td>	
							</tr>
							<tr>
								<td>User_trueName:</td>
								<td><%=rs.getString("user_trueName")%></td>	
							</tr>
							<tr>
								<td>User_gender</td>
								<td><%=rs.getString("user_gender")%></td>	
							</tr>
							<tr>
								<td>User_birthday</td>
								<td><%=rs.getString("user_birth")%></td>	
							</tr>
							<tr>
								<td>User_nationality</td>
								<td><%=rs.getString("user_nation")%></td>	
							</tr>
							<tr>
								<td>User_education</td>
								<td><%=rs.getString("user_edu")%></td>	
							</tr>
							<tr>
								<td>User_work</td>
								<td><%=rs.getString("user_work")%></td>	
							</tr>
							<tr>
								<td>User_phone</td>
								<td><%=rs.getString("user_phone")%></td>	
							</tr>
							<tr>
								<td>User_place</td>
								<td><%=rs.getString("user_place")%></td>	
							</tr>
							<tr>
								<td>User_email</td>
								<td><%=rs.getString("user_email")%></td>	
							</tr>
						</tbody>
					

						</center>
						<%
					}else{
						response.sendRedirect("BBB_index(system).jsp");
					}
				%>
              
	  
				
		
		</section>

	
	

</body>
</html>
