<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1> Welcome ${user.userid }</h1>

<h2>
		
			<a href="RaiseIssue?uid=${user.userid }">Raise Issue</a><br><br><br>
			
			<a href="ViewIssueHistory?uid=${user.userid }">View Issue History</a><br><br><br>
			
			
		
		</h2>


</body>
</html>