<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<center>
<form action="super_onlineTestAddNewQuestion(File)_success.jsp" method="post" name="form1" onsubmit="return checkData()">
    <table>
      <thead>
        <th colspan="2">Please add Question in here</th>
      </thead>
      <tbody>
        <tr>
          <td>Question</td>
          <td><input type="text" name="question" value="" /></td>
        </tr>
        <tr>
          <td>A:</td>
          <td><input type="text" name="A" value="" /></td>
        </tr>
       <tr>
          <td>B:</td>
          <td><input type="text" name="B" value="" /></td>
        </tr>
        <tr>
          <td>C:</td>
          <td><input type="text" name="C" value="" /></td>
        </tr>
        <tr>
          <td>D:</td>
          <td><input type="text" name="D" value="" /></td>
        </tr><tr>
          <td>answer:</td>
          <td><input type="text" name="answer" value="" /></td>
        </tr>
        <tr>
          <td><input type="submit" value="Submit" /></td>
          <td><input type="reset" value="Reset" /></td>
        </tr>
        
  
        


 


</tbody>
</table>
</form>
</center>

</body>
</html>