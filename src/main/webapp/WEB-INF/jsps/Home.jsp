<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>
<link rel="stylesheet" href="/style1.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">

</head>
<title>Issue Tracker</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<style>
body,h1,h2,h3,h4,h5 {font-family: "Raleway", sans-serif}
.w3-third img{margin-bottom: -6px; opacity: 0.8; cursor: pointer}
.w3-third img:hover{opacity: 1}
</style>
<body class="w3-black w3-content" style="max-width:1600px">

<!-- Sidebar/menu -->
<div class="navbars">
<nav class="w3-sidebar w3-bar-block w3-black w3-animate-left w3-text-white w3-collapse w3-top w3-center" style="z-index:3;width:200px;font-weight:bold;" id="mySidebar"><br>
  <h3 class="w3-padding-64 w3-center"><b>Issue Tracker</b></h3>
  <a href="javascript:void(0)" onclick="w3_close()" class="w3-bar-item w3-button w3-padding w3-hide-large">CLOSE</a>
  <a href="#" onclick="w3_close()" class="w3-bar-item w3-button">User</a> 
  <a href="#about" onclick="w3_close()" class="w3-bar-item w3-button">Category Rep</a> 
  <a href="#adminsign" onclick="w3_close()" class="w3-bar-item w3-button">Admin</a>
</nav>
</div>
<!-- Top menu on small screens -->

<!-- Overlay effect when opening sidebar on small screens -->
<div class="w3-overlay w3-hide-large w3-animate-opacity" onclick="w3_close()" style="cursor:pointer" title="close side menu" id="myOverlay"></div>

<!-- !PAGE CONTENT! -->
<div class="w3-main" style="margin-left:200px">

  <!-- Push down content on small screens --> 
  <div class="w3-hide-large" style="margin-top:83px"></div>
  
  <!-- Photo grid -->
  <div class="signin" id="signin">
  
  <p class="sign" align="center">Sign in</p>
    
<c:if test="${flag==1 }">
<h2>Invalid Username or Password</h2>
</c:if>
    
    <f:form class="form1" method="post" action="login" modelAttribute="login">
      <f:input class="un " type="text" align="center" path="userid" placeholder="UserId"/><h4><f:errors path="userid"/></h4>
      
      <f:input class="pass" type="password" align="center" path="password" placeholder="Password"/><h4><f:errors path="password"/></h4>
      
      <input class="submit" type="submit" value="Sign in"><br><br><br>
      
      <a class="register" href="/RegisterUser" align="center">Register</a>
      
      <p class="forgot" align="center"><a href="/forgot">Forgot Password?</a></p>
      
    </f:form>
    
  </div>

  <!-- About section -->
  <div class="about" id="about">
    
         <p class="sign" align="center">Category Representative Sign in</p>
   
    <c:if test="${flag==1 }">
		<h2>Invalid Username or Password</h2>
	</c:if>
    <f:form class="form1" method="post" action="loginrep" modelAttribute="login">
    
      <f:input class="un " path="userid" type="text" align="center" placeholder="Username"/><h4><f:errors path="userid"/></h4>
      
      <f:input class="pass" type="password" align="center" placeholder="Password" path="password"/><h4><f:errors path="password"/></h4>
      
      <input class="submit" align="center" type="submit" value="Sign in"><br><br><br>
      
      <a class="register" href="/RegisterCategory" align="center">Register</a>
    </f:form>  
                
  </div>

  <!-- Contact section -->
  <div class="adminsign" id="adminsign">
   <p class="sign" align="center">Admin Sign in</p>
    
  <c:if test="${flag==1 }">
		<h2>Invalid AdminId or Password</h2>
	</c:if>
    
    <f:form class="form1" method="post" action="loginadmin" modelAttribute="login">
      <f:input class="un " type="text" align="center" placeholder="Username" path="userid"/><h4><f:errors path="userid" /></h4>
      <f:input class="pass" type="password" align="center" placeholder="Password" path="password"/><h4><f:errors path="password" /></h4>
      <input class="submit" type="submit" value="Sign in"><br><br>
    </f:form> 
  </div>

  <!-- Footer -->
  

<!-- End page content -->
</div>

<script>
// Script to open and close sidebar
function w3_open() {
  document.getElementById("mySidebar").style.display = "block";
  document.getElementById("myOverlay").style.display = "block";
}
 
function w3_close() {
  document.getElementById("mySidebar").style.display = "none";
  document.getElementById("myOverlay").style.display = "none";
}

// Modal Image Gallery
function onClick(element) {
  document.getElementById("img01").src = element.src;
  document.getElementById("modal01").style.display = "block";
  var captionText = document.getElementById("caption");
  captionText.innerHTML = element.alt;
}

</script>


</body>
</html>