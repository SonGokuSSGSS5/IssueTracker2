<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="/style5.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <title>Register</title>
</head>
<body>
<div class="main">
    <p class="sign" align="center">Register</p>
    <f:form class="form1" action="registerCategoryRep" method="post" modelAttribute="categoryRep">
    
      <f:input class="un " type="text" path="firstname" align="center" placeholder="FirstName"/><f:errors path="firstname"/>
      
      <f:input class="un " type="text" path="lastname" align="center" placeholder="LastName"/><f:errors path="lastname"/>
      
      <f:input class="un " type="date" path="dob" align="center" placeholder="DOB"/><br><f:errors path="dob"/>
      
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<f:radiobutton path="gender"  id="male" name="gender" value="male"/>
	  <label for="male">Male</label>
	  <f:radiobutton path="gender" id="female" name="gender" value="female"/>
	  <label for="female">Female</label><f:errors path="gender"/><br><br> 
	  
      <f:input class="un " path="contactno" type="text" align="center" placeholder="ContactNo"/><f:errors path="contactno"/>
      
      <f:input class="un " path="categoryrepid" type="text" align="center" placeholder="CategoryRep_id"/><f:errors path="categoryrepid"/>
      
      <f:input class="un " type="text" path="category" align="center" placeholder="Category"/><f:errors path="category"/>
      
      <f:input class="pass" path="password" type="password" align="center" placeholder="Password"/><f:errors path="password"/>
      
	  <input type="submit" class="submit" value="Register">
    </f:form>      
                
    </div>
</body>
</html>