<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body bgcolor="green">
	<h1>You have Entered the Raise Issue Page</h1>

	<f:form action="RaiseIssueSuccess" method="post"
		modelAttribute="RaiseIssueBean">

Choose Category :  
	<f:select path="category">
			<f:options items="${categoryList }" />
		</f:select>
		<br>
		<br>

Topic : <f:input path="topic"/><br><br>

Issue : <f:input path="description"/><br><br>

<f:hidden path="askedby" value="${user }"/>

<input type="submit" value="RaiseIssue">


	</f:form>


</body>
</html>