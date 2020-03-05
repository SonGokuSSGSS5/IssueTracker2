<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update category</title>
</head>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<body>

<h1 align="center">Update Category</h1>

<f:form action="updateCategory" method="post" modelAttribute="category1">

	 Category ID : <f:input path="categoryid" readonly="true"/><br><br>

	 Category Name :<f:input path="category"/> <f:errors path="category"/> <br><br>

	<input type="submit" value="UpdateCategory">

</f:form>




</body>
</html>