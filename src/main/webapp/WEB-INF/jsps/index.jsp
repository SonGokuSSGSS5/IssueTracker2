<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<head>
  <link rel="stylesheet" href="/style1.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <title>Sign in</title>
</head>

<body>
  <div class="main">
    <p class="sign" align="center">Sign in</p>
    <form class="form1" method="post">
      <input class="un " type="text" align="center" placeholder="Username">
      <input class="pass" type="password" align="center" placeholder="Password">
      <a class="submit" align="center">Sign in</a><br><br><br>
      <a class="register" href="/RegisterUser" align="center">Register</a>
      <p class="forgot" align="center"><a href="#">Forgot Password?</a></p>
      <p class="links" align="center"><a href="/SignAdmin">Sign in as Admin</a></p>
      <p class="links" align="center"><a href="/SignCategory">Sign in as Category Representative</a></p>
    </form>      
                
    </div>
     
</body>

</html>