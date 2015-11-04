<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script language="JavaScript">
function checkData(){
	  if(form1.user_name.value==""){
	    alert("please enter the username");
	    form1.user_name.focus();
	    return false;
	  }
	  if(form1.user_password.value==""){
	    alert("please enter the password");
	    form1.user_password.focus();
	    return false;
	  }
	  var email=form1.user_email.value;
		var reg=/^([a-zA-Z0-9_-])+@([a-zA-Z0-9_-])+(.[a-zA-Z0-9_-])+/ ;
		if(!reg.test(email)){
			alert("please enter the correct email address");
			form1.user_email.focus();
			form1.user_email.select();
			return false;

		}
		if(form1.user_email.value==""){
			alert("please enter the email");
			form1.user_email.focus();
			return false;
		}
		if(form1.user_password.value!=form1.user_password2.value){
			alert("please enter the same password");
			form1.user_password.focus();
			form1.user_password.select();
			return false;
		}

	}


</script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Register Page</title>
 <link rel="stylesheet" href="css/style2.css">
 <meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0" />
</head>
<body>
	<center>
	<form  class="login" action="/BBB/RegisterServlet" method="post" name="form1" onsubmit="return checkData()">
		<table border="6" width="60%" cellpadding="7">
			<thead>
				<th colspan="2" class="character1">Please register here</th>
			</thead>
			<tbody>
				<tr>
					<td  class="character2">User Name</td>
					<td><input  type="text" name="user_name" value="" /></td>
				</tr>
				<tr>
					<td class="character2">Password</td>
					<td><input type="password" name ="user_password" value="" /></td>
				</tr>
				<tr>
					<td class="character2">Password Again</td>
					<td><input type="password" name ="user_password2" value="" /></td>
				</tr>
				<tr>
					<td class="character2">Email</td>
					<td><input type ="text" name="user_email" value="" /></td>
				</tr>
				<tr>
					<td class="character2">User True Name</td>
					<td><input type="text" name="user_trueName" value="" /></td>
 				</tr>
 				<tr>
					<td class="character2">User Gender</td>
					<td><input type="radio" name ="user_gender" value="male" checked />male
						<input type="radio" name ="user_gender" value="female"  />female
					</td>
				</tr>
				<tr>
					<td class="character2">User Birthday</td>
					<td>
						<select name="user_birthday_month" size="1">
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>	
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>	
							<option value="09">9</option>
							<option value="10">10</option>	
							<option value="11">11</option>
							<option value="12">12</option>								
						</select>
						<select name="user_birthday_day" size="1">
							<option value="01">1</option>
							<option value="02">2</option>
							<option value="03">3</option>
							<option value="04">4</option>
							<option value="05">5</option>	
							<option value="06">6</option>
							<option value="07">7</option>
							<option value="08">8</option>	
							<option value="09">9</option>
							<option value="10">10</option>	
							<option value="11">11</option>
							<option value="12">12</option>
							<option value="13">13</option>
							<option value="14">14</option>
							<option value="15">15</option>
							<option value="16">16</option>
							<option value="17">17</option>	
							<option value="18">18</option>
							<option value="19">19</option>
							<option value="20">20</option>	
							<option value="21">21</option>
							<option value="22">22</option>	
							<option value="23">23</option>
							<option value="24">24</option>	
							<option value="25">25</option>
							<option value="26">26</option>
							<option value="27">27</option>
							<option value="28">28</option>
							<option value="29">29</option>	
							<option value="30">30</option>
							<option value="31">31</option>						
						</select>				
						<select  name ="user_birth_year" size="1" >
							<option value="1978">1978</option>
							<option value="1979">1979</option>
							<option value="1980">1980</option>
							<option value="1981">1981</option>
							<option value="1982">1982</option>
							<option value="1983">1983</option>
							<option value="1984">1984</option>
							<option value="1985">1985</option>
							<option value="1986">1986</option>
							<option value="1987">1987</option>
							<option value="1988">1988</option>
							<option value="1989">1989</option>
							<option value="1990">1990</option>
							<option value="1991">1991</option>
							<option value="1992">1992</option>
							<option value="1993">1993</option>
							<option value="1994">1994</option>
							<option value="1995">1995</option>
							<option value="1996">1996</option>
							<option value="1997">1997</option>
							<option value="1998">1998</option>
							<option value="1999">1999</option>
							<option value="2000">2000</option>
						</select>
					</td>
				</tr>
				<tr>
					<td class="character2">Nationality</td>
					<td><input type="text" name ="user_nation" value="" /></td>
				</tr>
				<tr>
					<td class="character2">Education</td>
					<td><input type="text" name ="user_edu" value="" /></td>
				</tr>
				<tr>
					<td class="character2">Occupation</td>
					<td><input type="text" name ="user_work" value="" /></td>
				</tr>
				<tr>
					<td class="character2">Phone</td>
					<td><input type="text" name ="user_phone" value="" /></td>
				</tr>
				<tr>
					<td class="character2">Place</td>
					<td><input type="text" name ="user_place" value="" /></td>
				</tr>
 				<tr>
 					<td class="character2"><input type="submit" value="Submit" /></td>
 					<td class="character2"><input type="reset" value="Reset" /></td>
 					 </tr>
 				<tr>
 					<td colspan="2" class="character2">If you have registered , please<a href="BBB_index(system).jsp">check here</a></td>
 				</tr>
 				
 				
			</tbody>
		</table>
		</form>
	</center>


</body>
</html>