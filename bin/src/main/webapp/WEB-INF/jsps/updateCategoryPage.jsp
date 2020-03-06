<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="/style9.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<meta charset="ISO-8859-1">
<title>update category</title>
</head>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<body>
<div class="main">
<p class="sign" align="center">Update Category</p>

<f:form class="form1" action="updateCategory" method="post" modelAttribute="category1">

	 <f:input class="un " path="categoryid" readonly="true" placeholder="Category ID"/><br><br>

	 <f:input class="un " path="category" placeholder="Category Name"/> <p><f:errors path="category"/><p>

	<input class="submit" type="submit" value="UpdateCategory">

</f:form>



</div>
</body>
</html>