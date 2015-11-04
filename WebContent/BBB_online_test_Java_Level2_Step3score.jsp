<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Index Page</title>
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
				String sqlString="select * from BBB_test_Java_Introduction_level2";
				rs=sql.executeQuery(sqlString);
				int counter=0;				
				String ids=request.getParameter("user_id");
				String situation=request.getParameter("key");
				int id=Integer.parseInt(ids);	
				int key=Integer.parseInt(situation);		
				String arrays="introduction";
				if(id==3&&key==1){
					rs.first();
					out.println(rs.first());
					session.setAttribute("key",situation);
					session.setAttribute("id",ids);
				for(int i=1;i<=3;i++){												
					if(request.getParameter(String.valueOf(i))!=null){
						sql=con.createStatement();
						String sqlinsert="insert into BBB_test_Java_AutoRunning (username,questionID,step,catalogue)value('"+userName+"',"+i+",'"+2+"','"+arrays+"')";
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
				}/*else if(id==3&&key==2){
					rs.first();
					out.println(rs.first());
					String one="six";
					session.setAttribute("threeorsix",one);
					for(int i=1;i<=6;i++){
						if(request.getParameter(String.valueOf(i))!=null){
							if(request.getParameter(String.valueOf(i)).equals(rs.getString("answer"))){
								counter++;								
								}
							rs.next();
						}else{
							String k=request.getParameter(String.valueOf(i));
							k="0";
							}
					}*/
					//set.attribute("",);
					
				else if(id==6&&key==2){
					//rs.absolute(4);
					//out.println(rs.absolute(4));
					rs.first();
					out.println(rs.first());
					session.setAttribute("key",situation);
					session.setAttribute("id",ids);
					for(int i=1;i<=6;i++){
						if(request.getParameter(String.valueOf(i))!=null){
							sql=con.createStatement();
							String sqlinsert="insert into BBB_test_Java_AutoRunning (username,questionID,step,catalogue)value('"+userName+"',"+i+",'"+2+"','"+arrays+"')";
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
				}else if(id==4&&key==1){
					rs.absolute(4);
					session.setAttribute("key",situation);
					session.setAttribute("id",ids);
					for(int i=4;i<=6;i++){
						if(request.getParameter(String.valueOf(i))!=null){
							sql=con.createStatement();
							String sqlinsert="insert into BBB_test_Java_AutoRunning (username,questionID,step,catalogue)value('"+userName+"',"+i+",'"+2+"','"+arrays+"')";
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
				}else if(id==7&&key==2){
					rs.absolute(7);
					session.setAttribute("key",situation);
					session.setAttribute("id",ids);
					for(int i=7;i<=12;i++){
						if(request.getParameter(String.valueOf(i))!=null){
							sql=con.createStatement();
							String sqlinsert="insert into BBB_test_Java_AutoRunning (username,questionID,step,catalogue)value('"+userName+"',"+i+",'"+2+"','"+arrays+"')";
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
				}else if(id==7&&key==1){
					rs.absolute(7);
					session.setAttribute("key",situation);
					session.setAttribute("id",ids);
					for(int i=7;i<=9;i++){
						if(request.getParameter(String.valueOf(i))!=null){
							sql=con.createStatement();
							String sqlinsert="insert into BBB_test_Java_AutoRunning (username,questionID,step,catalogue)value('"+userName+"',"+i+",'"+2+"','"+arrays+"')";
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
				}else if (id==13&&key==2){
					rs.absolute(13);
					session.setAttribute("key",situation);
					session.setAttribute("id",ids);
					for(int i=13;i<=18;i++){
						if(request.getParameter(String.valueOf(i))!=null){
							sql=con.createStatement();
							String sqlinsert="insert into BBB_test_Java_AutoRunning (username,questionID,step,catalogue)value('"+userName+"',"+i+",'"+2+"','"+arrays+"')";
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
					if(counter==3&&key==1){
						
						out.println("Excellent!");
						out.println("Wanna see your scores ? <a href="+"BBB_online_test_user_scores.jsp"+">check here</a>");
					}else if(counter==2&&key==1){
						out.println("Nice Work!" );
						out.println("Wanna see your scores ? <a href="+"BBB_online_test_user_scores.jsp"+">check here</a>");
					}else if((counter==4&&key==2)||(counter==5&&key==2)||(counter==6&&key==2)){
						out.println("Nice Work!" );
						out.println("Wanna see your scores ? <a href="+"BBB_online_test_user_scores.jsp"+">check here</a>");
					}
					else{
						if((id==3&&key==1)||(id==6&&key==2)){
						out.println("Fail... <h2><a href="+"BBB_online_test_Java_questionStep3_recircle(level2).jsp"+">try again</a></h2>");
						}else if((id==4&&key==1)||(id==7&&key==2)){
							out.println("Fail... <h2><a href="+"BBB_online_test_Java_questionStep3_recircle2(level2).jsp"+">try again</a></h2>");
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



