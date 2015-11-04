<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script language="JavaScript">
function checkData(){
	  if(form1.name.value==""){
	    alert("please enter the username");
	    form1.name.focus();
	    return false;
	  }
	  if(form1.password.value==""){
	    alert("please enter the password");
	    form1.password.focus();
	    return false;
	  }
	}


</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body>
<center> 
<form action="/BBB/LoginServlet" method="post" name="form1" onsubmit="return checkData()">
<table  border="4" width="60%" cellpadding="10">
	<thead>
	<tr>
		<th colspan="2">Please log in here</th>
	<tr>
	</thead>
	<tbody>
	<tr>
		<td>Username:</td>
		<td><input type="text" name="username"></td>
	</tr>
	<tr>
		<td>Password:</td>
		<td><input type="password" name="password"></td>
	</tr>
	<tr>
		<td><input type="submit" value="submit"></td>
		<td><input type="reset" value="reset"></td>
	</tr>
	
	<tr>
		<td  colspan="2">Not sign up ? please <a href="BBB_register.jsp">click here</a> </td>
	</tr>
	<tr>
		<td  colspan="2">Super_User?  please <a href="BBB_superUser.jsp">click here</a> </td>
	</tr>
	</tbody>
</table>
</form>
</center>
</body>
</html>