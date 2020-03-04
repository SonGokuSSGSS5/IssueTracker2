<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="/style2.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <title>Register-USER</title>
</head>
<body>
<div class="main">
    <p class="sign" align="center">Register</p>
    
    <form:form class="form1" action="success" method="post" modelAttribute="userregister">
    
      <form:input class="un " type="text" align="center" path="firstname" placeholder="FirstName"/><form:errors path="firstname"/>
      
      <form:input class="un " type="text" align="center" path="lastname"  placeholder="LastName"/><form:errors path="lastname"/>
      
      <form:input class="un " type="date" align="center" path="dob" placeholder="DOB"/><br><form:errors path="dob"/>
      
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<form:radiobutton path="gender" id="male" name="gender" value="male"/>
	  <label for="male">Male</label>
	  <form:radiobutton path="gender" id="female" name="gender" value="female"/>
	  <label for="female">Female</label><form:errors path="gender"/><br><br> 
	  
      <form:input  path="contactno" class="un " type="text" align="center" placeholder="ContactNo"/><form:errors path="contactno"/>
      
      <form:input  path="userid" class="un " type="text" align="center" placeholder="Username"/><form:errors path="userid"/>
      
      <form:input path="password" class="pass" type="password" align="center" placeholder="Password"/><form:errors path="password"/>
      
      <br>
	  <br>
      <form:select path="squestion1" id="select-button" name="q1">
      <option disabled selected value>Question 1</option>
	  <form:option value="volvo">Name of your First Pet?</form:option>
	  <form:option value="saab">Name of the first Movie you watched?</form:option>
	  <form:option value="mercedes">What is your mother's maiden name?</form:option>
	  <form:option value="audi">What is the name of the town where you were born?</form:option>
	  </form:select><form:errors path="squestion1"/>
	  <br>
	  <br>
	  <form:input class="un " path="sanswer1"  type="text" align="center" placeholder="Answer 1"/><form:errors path="sanswer1"/>
	  
	  <form:select path="squestion2" id="select-button2" name="q2">
	  <option disabled selected value>Question 2</option>
	  <form:option value="volvo">Name of your First Pet?</form:option>
	  <form:option value="saab">Name of the first Movie you watched?</form:option>
	  <form:option value="mercedes">What is your mother's maiden name?</form:option>
	  <form:option value="audi">What is the name of the town where you were born?</form:option>
	  </form:select><form:errors path="squestion2"/>
	  <br>
	  <br>
	  <form:input class="un " path="sanswer2" type="text" align="center" placeholder="Answer 2"/><form:errors path="sanswer2"/>
	  
	  <form:select path="squestion3" id="select-button3" name="q3">
	  <option disabled selected value>Question 3</option>
	  <form:option value="volvo">Name of your First Pet?</form:option>
	  <form:option value="saab">Name of the first Movie you watched?</form:option>
	  <form:option value="mercedes">What is your mother's maiden name?</form:option>
	  <form:option value="audi">What is the name of the town where you were born?</form:option>
	  </form:select><form:errors path="squestion3"/>
	  <br>
	  <br>
	  
	  <form:input class="un " path="sanswer3" type="text" align="center" placeholder="Answer 3"/><form:errors path="sanswer3"/>
	  
	  <input type="submit" class="submit" align="center" value="Register">
    </form:form>      
                
    </div>
</body>
</html>