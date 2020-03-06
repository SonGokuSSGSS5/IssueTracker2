<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
  <link rel="stylesheet" href="/styleRaiseIssue.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>


<nav class="site-header sticky-top py-1">
  <div class="container d-flex flex-column flex-md-row justify-content-between">
    <a class="py-2" href="#" aria-label="Product">
      <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" class="d-block mx-auto" role="img" viewBox="0 0 24 24" focusable="false"><title>Product</title><circle cx="12" cy="12" r="10"/><path d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94"/></svg>
    </a>
    <a class="py-2 d-none d-md-inline-block" href="addCategory">Add Category</a>
    <a class="py-2 d-none d-md-inline-block" href="ViewCategory">View Category</a>
    <a class="py-2 d-none d-md-inline-block" href="/#">Logout</a>
  </div>
</nav>


<div class="main">
<br>
<p class="sign" align="center">View Category</p>
<br>
<table border="2" align="center" cellspacing="10"  cellpadding="10">

	<tr>
		<th style="color:white">CategoryId</th>
		<th style="color:white">CategoryName</th>
	</tr>

<c:forEach var="cr" items="${course }" >

		<tr>
			<th style="color:white">${cr.categoryid }</th>
			
			<th style="color:white">${cr.category }</th>
			
			<th><a href="updateCategoryPage?cid=${cr.categoryid}" >EDIT</a></th>
			
		</tr>
</c:forEach>

</table>

</div>
</body>
</html>