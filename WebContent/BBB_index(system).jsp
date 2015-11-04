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
 <title>System</title>
  <link rel="stylesheet" href="css/style.css">
  <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>
<body>
  <form action="/BBB/LoginServlet" class="login" method="post" name="form1" onsubmit="return checkData()" >
    <center><img  class="img1" src="images/Bookmark-Final-Logo.jpg"/></center>
    <h1>System</h1>
    <input type="text" name="username" class="login-input" placeholder="Username" autofocus>
    <input type="password" name="password" class="login-input" placeholder="Password">
    <input type="submit" value="Login" class="login-submit">
    <p class="login-help"><a href="BBB_register.jsp">Not register?</a></p>
  </form>

 
</body>
</html>