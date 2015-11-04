<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<Script>
function oncheck(){
	if(form3.oldPassword.value==""){
		alert("Please enter the old password");
		form3.oldPassword.focus();
		return false;
	}
	if(form3.newPassword.value==""){
		alert("Please enter the new password");
		form3.newPassword.focus();
		return false;
	}
	if(form3.newPassword2.value==""){
		alert("Please enter the new password again");
		form3.newPassword2.focus();
		return false;
	}
	if(form3.newPassword.value!=form3.newPassword2.value){
		alert("please enter the same password");
		form3.newPassword2.focus();
		form3.newPassword2.select();
		return false;
	}
	
}

</Script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>agile - a free css template</title>
<link rel="stylesheet" href="css/styles4.css" type="text/css" />

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
	    	
	    		
	    	
	    <form name="form3" method="POST" action="BBB_edit_personal_password_result.jsp" onsubmit="return oncheck()">
	
			<table  border="6" width=60% cellpadding="10">
				
				<tbody>
					<tr>
						<td align=center valign=center><h5>Please enter the old password:</h5></td>
						<td><input type="password" name="oldPassword"></td>
					</tr>
					<tr>
						<td align=center valign=center><h5>Please enter the new password:</h5></td>
						<td><input type="password" name="newPassword"></td>
					</tr>
					<tr>
						<td align=center valign=center><h5>Please enter the new password again:</td>
						<td><input type="password" name="newPassword2"></td>
					</tr>
					<tr>
						<td align=center valign=center><input type="submit" name="submit" value="submit"></td>
						<td align=center valign=center><input type="reset" name="reset" value="reset"></td>
					</tr>				
				</tbody>
			</table>
			</div>
				
				</center>
		</form>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				<p>&nbsp;</p>
				
				
	

</body>
</html>
