<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="/style8.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
<div class="main">
<br>
<a  class="submit" href="mapToLoginAdmin">Back</a>
<p class="sign" align="center">View Category</p>
<br>
<table border="2" align="center" cellspacing="10"  cellpadding="10">

	<tr>
		<th>CategoryId</th>
		<th>CategoryName</th>
	</tr>

<c:forEach var="cr" items="${course }" >

		<tr>
			<th>${cr.categoryid }</th>
			
			<th>${cr.category }</th>
			
			<th><a href="updateCategoryPage?cid=${cr.categoryid}" >EDIT</a></th>
			
		</tr>
</c:forEach>

</table>

</div>
</body>
</html>