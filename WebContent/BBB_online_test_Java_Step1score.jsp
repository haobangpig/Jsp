<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
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
				<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con;
				Statement sql;
				ResultSet rs;
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","haobang");
				sql=con.createStatement();
				String sqlString="select * from BBB_test_Java_Arrays";
				rs=sql.executeQuery(sqlString);
				
				int counter=0;				
				String ids=request.getParameter("user_id");
				int id=Integer.parseInt(ids);
				String arrays="Arrays";
				if(id==3){
					rs.first();
					out.println(rs.first());
				for(int i=1;i<=3;i++){						
						
						if(request.getParameter(String.valueOf(i))!=null){
							sql=con.createStatement();
							String sqlinsert="insert into BBB_test_Java_AutoRunning (username,questionID,step,catalogue)value('"+userName+"',"+i+",'"+1+"','"+arrays+"')";
							sql.executeUpdate(sqlinsert);
							if(request.getParameter(String.valueOf(i)).equals(rs.getString("answer"))){
								counter++;
								sql=con.createStatement();
								String sqlupdate="Update  BBB_test_Java_AutoRunning set result=1 order by id desc limit 1";								
								sql.executeUpdate(sqlupdate);
								sql.close();
							}else{
									sql=con.createStatement();
									String sqlupdate="Update  BBB_test_Java_AutoRunning set result=0 order by id desc limit 1";
									sql.executeUpdate(sqlupdate);	
									sql.close();
							}
							rs.next();
						}else{
							String k=request.getParameter(String.valueOf(i));
							k="0";
							}
						}
				}else if(id==6){										
					
					rs.absolute(4);
					out.println(rs.absolute(4));
					for(int i=4;i<=6;i++){
						if(request.getParameter(String.valueOf(i))!=null){
							sql=con.createStatement();
							String sqlinsert="insert into BBB_test_Java_AutoRunning (username,questionID,step,catalogue)value('"+userName+"',"+i+",'"+1+"','"+arrays+"')";
							sql.executeUpdate(sqlinsert);
							if(request.getParameter(String.valueOf(i)).equals(rs.getString("answer"))){
								counter++;
								sql=con.createStatement();
								String sqlupdate="Update  BBB_test_Java_AutoRunning set result=1 order by id desc limit 1";								
								sql.executeUpdate(sqlupdate);
								sql.close();
							}else{
									sql=con.createStatement();
									String sqlupdate="Update  BBB_test_Java_AutoRunning set result=0 order by id desc limit 1";
									sql.executeUpdate(sqlupdate);	
									sql.close();
							}
							rs.next();
						}else{
							String k=request.getParameter(String.valueOf(i));
							k="0";
							}
												
						
						}
					}else{
					rs.absolute(7);
					for(int i=7;i<=9;i++){
						if(request.getParameter(String.valueOf(i))!=null){
							sql=con.createStatement();
							String sqlinsert="insert into BBB_test_Java_AutoRunning (username,questionID,step,catalogue)value('"+userName+"',"+i+",'"+1+"','"+arrays+"')";
							sql.executeUpdate(sqlinsert);
							if(request.getParameter(String.valueOf(i)).equals(rs.getString("answer"))){
								counter++;
								sql=con.createStatement();
								String sqlupdate="Update  BBB_test_Java_AutoRunning set result=1 order by id desc limit 1";								
								sql.executeUpdate(sqlupdate);
								sql.close();
							}else{
									sql=con.createStatement();
									String sqlupdate="Update  BBB_test_Java_AutoRunning set result=0 order by id desc limit 1";
									sql.executeUpdate(sqlupdate);	
									sql.close();
							}
							rs.next();
						}else{
							String k=request.getParameter(String.valueOf(i));
							k="0";
							}
						
						
				


					}
				}
				%>
				
				<h1>Your Score:<%=counter*10%></h1>
				
				
				<%
					if(counter==3){
						String OneArray="3";
						session.setAttribute("OneArray",OneArray);
						out.println("Excellent! <h2><a href="+"BBB_online_test_Java_questionStep2(File).jsp"+">Keep Going  to the Step2</a></h2>");
					}else if(counter==2){
						String OneArray="2";
						session.setAttribute("OneArray",OneArray);
						out.println("Nice Work! <h2><a href="+"BBB_online_test_Java_questionStep2(File).jsp"+">Keep Going to the Step2</a></h2>");
					}else{
						if(id<5){
						out.println("Fail... <h2><a href="+"BBB_online_test_Java_questionStep1_recircle.jsp"+">try again</a></h2>");
						session.setAttribute("id",ids);
						out.println(id);
						}else if(id==6){
							out.println("Fail... <h2><a href="+"BBB_online_test_Java_questionStep1_recircle2.jsp"+">try again</a></h2>");
							session.setAttribute("id",ids);
							out.println(id);
							
						}else{
							
							out.println("i think you should learn more about the Java Arrays,please study more harder");
							out.println("Go the the <a href="+"BBB_main.jsp"+">main page</a></h2>");
						}

					}
				
				%>
		</section>

		<div class="clear"></div>

	</section>
	

</body>
</html>
