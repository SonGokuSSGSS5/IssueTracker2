<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/styleUserHome.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<title>User Home</title>
</head>
<body>
<div class="main">


<p class="sign" align="center">Welcome ${user.userid }</p>

<br>
<br>
		

<a class="raise" href="RaiseIssue?uid=${user.userid }">Raise Issue</a><br><br><br>
<br>		
<a class="view"  href="ViewIssueHistory?uid=${user.userid }">View Issue History</a><br><br><br>
			
<p class="forgot" align="center"><a href="#">Help</a></p>
      
<p class="links" align="center"><a href="/#">Logout</a></p>			
		


</div>
</body>
</html>