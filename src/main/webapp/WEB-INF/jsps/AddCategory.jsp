<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="/style7.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<title>Add Category</title>
</head>
<body>
<div class="main">
<p class="sign" align="center">Add Category</p>
<br>
<br>
<f:form action="result" method="post" modelAttribute="category1">
	
	<f:input class="un " path="categoryid" placeholder="Category ID" /><p><f:errors path="categoryid"/></p>

	<f:input class="un " path="category" placeholder="Category Name"/><p><f:errors path="category"/></p>

	
	<input class="submit" type="submit" value="Add Category">
	

</f:form>
</div>
</body>
</html>