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
                            		<li class="selected-item"><a href="BBB_main.jsp">Home</a></li>
                           		<li><a href="BBB_information.jsp">Information</a></li>
                                 <li><a href="BBB_online_test.jsp">Online Test</a></li>
                            		<li><a href="BBB_contact_us.jsp">Contact us</a></li>
                        	</ul>
			</nav>

			
			
			</aside>
			<section id="content" class="column-right">
                		
	    <article>
				
			
			<h2>Introduction to this System</h2>
			<div class="article-info">Posted on <time datetime="2015-07-14">14 July</time> by <a href="#" rel="author">Hao Bang</a></div>

            <p>Welcome to this website, this website can improve your programming skills and help you get the better Scores in your examination. But this website still have a lot of problem and the functions need to be added in the future. 
            Please hold on the second and help us to create the better Online test Website </p>
            
            <p>This System has been tested in:</p>


            <ul class="styledlist">
                <li>Firefox</li>
                <li>Opera</li>
                <li>IE</li>
 				<li>Safari</li>
                <li>Chrome</li>
            </ul>

		<a href="BBB_online_test_Java_quetionStep1(Arrays).jsp" class="button">Wanna Quickly Start?</a>
		<a href="BBB_contact_us.jsp" class="button button-reversed">Comments</a>
		</article>	
		<article class="expanded">

            		<h2>Personal Information</h2>
			<div class="article-info">Posted on <time datetime="2015-07-14">14 July</time> by <a href="#" rel="author">Hao Bang</a></div>

			
           <p>Well, in this website system not only can test how many you can got and show your ability to achieve the target. And makes you edit and see your personal information which you have input in register page</p>



		<a href="BBB_information.jsp" class="button">Wanna See That</a>
		<a href="BBB_contact_us.jsp" class="button button-reversed">Comments</a>
		</article>

			
			<footer class="clear">
				<p>&copy; copyright by Hao Bang</p>
			</footer>

		</section>

		<div class="clear"></div>

	</section>
	

</body>
</html>