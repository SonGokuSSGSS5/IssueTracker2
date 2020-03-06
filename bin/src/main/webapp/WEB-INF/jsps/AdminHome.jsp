<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/style6.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<title>Admin Home</title>
</head>
<body>
<div class="main">
<p class="sign" align="center">Welcome ${admin.adminid }</p>
<br>
<br>

<a class="register" href="addCategory">Add Category</a>
<br>
<br>
<br>
<br>

<form action="ViewCategory" method="post">
<input type="submit" class="register" value="View Category">
</form>
<br>


<p class="links" align="center"><a href="/#">Logout</a></p>
</div>
</body>
</html>