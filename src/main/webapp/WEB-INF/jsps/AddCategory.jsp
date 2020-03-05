<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Category</title>
</head>
<body bgcolor="Aquamarine">

<h1> You have Entered Add Category Page</h1>

<f:form action="result" method="post" modelAttribute="category1">
	
	Enter a category ID <f:input path="categoryid" /><f:errors path="categoryid"/>
	<br><br>
	Enter a category <f:input path="category"/><f:errors path="category"/>
	<br><br>
	
	<input type="submit" value="Add Category">
	

</f:form>

</body>
</html>