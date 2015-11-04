<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
<!doctype html>
<html>
<Script>
function on_check(){
	for(var i=1;i<=3;i++){
	if(form2.i.value==""){
		alert("please enter the No."+i+"'s answer");
		return false;
	}
	}
}
</Script>
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
                           			<li><a href="BBB_information.jsp">Information</a></li>
                           			<li><a href="BBB_contacts.jsp">Contacts</a></li>
                            		<li><a href="BBB_schedule.jsp">schedule</a></li>
                            		<li><a href="BBB_personal_file.jsp">Personal File</a></li>
                            		<li  class="selected-item"><a href="BBB_online_test.jsp">Online Test</a></li>
                            		<li><a href="BBB_contact_us.jsp">Contact us</a></li>
                </ul>
			</nav>

			
			
			</aside>
			<section id="content" class="column-right">

			<article>
	    			<center>
						<h1>Java Test Step One : Arrays</h1>
					<form action="BBB_online_test_Java_Step1score.jsp" method="post" name="form2" onsubmit="return on_check()">
						<table>							
						<tbody>


				<%
				String id="3";
				Class.forName("com.mysql.jdbc.Driver");
				Connection con;
				Statement sql;
				ResultSet rs;
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
				
				
				/*sql=con.createStatement();
				String sql123="insert into  BBB_test_Java_test (username)values('"+userName+"')";
				sql.executeUpdate(sql123);
				String sql456="select * from BBB_test_Java_Array_AutoRunning where username='"+userName+"'";
				rs=sql.executeQuery(sql456);
				rs.last();
				String id123=rs.getString("id");
				session.setAttribute("id_auto",id123 );
				String id_auto=(String)session.getAttribute("id_auto");
				out.println(id_auto);*/
				
			
				sql=con.createStatement();
				String sqlString="select * from BBB_test_Java_Arrays";
				rs=sql.executeQuery(sqlString);
				for(int i=1;i<=3;i++){
					rs.next();		
	%>	    
							<tr>
								<td><h4><%=i%>.<%=rs.getString("question")%></h4></td>
							</tr>
							<tr>
								<td><input type="radio" name="<%=i%>" value="A" >A:<%=rs.getString("A")%></td>
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
			<input type="hidden" name="user_id" value="<%=id%>">
			
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
