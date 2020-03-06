<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
  <link rel="stylesheet" href="/styleRaiseIssue.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
<title>Insert title here</title>
</head>
<body>
<div class="main">
	<p class="sign" align="center">Raise Issue</p>
	<br>

	

	<f:form action="RaiseIssueSuccess" method="post"
		modelAttribute="RaiseIssueBean">

	<f:select path="category" id="select-button">

			<option disabled selected value>Choose Category</option>
			<f:options items="${categoryList }" />
		</f:select>
<p><f:errors path="category"/></p>

<f:input class="un " path="topic" placeholder="Topic"/><p><f:errors path="topic"/></p>

<f:input class="un " path="description" placeholder="Issue"/><p><f:errors path="description"/></p>

<f:hidden path="askedby" value="${user }"/>

<input class="raise" type="submit" value="RaiseIssue">



	</f:form>

</div>
</body>
</html>