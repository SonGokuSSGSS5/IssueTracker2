<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="/style2.css">
  <link href="https://fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" href="path/to/font-awesome/css/font-awesome.min.css">
  <title>Register</title>
</head>
<body>
<div class="main">
    <p class="sign" align="center">Register</p>
    <form class="form1">
      <input class="un " type="text" align="center" placeholder="FirstName">
      <input class="un " type="text" align="center" placeholder="LastName">
      <input class="un " type="date" align="center" placeholder="DOB"><br>
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="radio" id="male" name="gender" value="male">
	  <label for="male">Male</label>
	  <input type="radio" id="female" name="gender" value="female">
	  <label for="female">Female</label><br><br>
      <input class="un " type="text" align="center" placeholder="ContactNo">
      <input class="un " type="text" align="center" placeholder="Username">
      <input class="pass" type="password" align="center" placeholder="Password">
      <br>
	  <br>
      <select id="select-button" name="q1">
      <option disabled selected value>Question 1</option>
	  <option value="volvo">Name of your First Pet?</option>
	  <option value="saab">Name of the first Movie you watched?</option>
	  <option value="mercedes">What is your mother's maiden name?</option>
	  <option value="audi">What is the name of the town where you were born?</option>
	  </select>
	  <br>
	  <br>
	  <input class="un " type="text" align="center" placeholder="Answer 1">
	  <select id="select-button2" name="q2">
	  <option disabled selected value>Question 2</option>
	  <option value="volvo">Name of your First Pet?</option>
	  <option value="saab">Name of the first Movie you watched?</option>
	  <option value="mercedes">What is your mother's maiden name?</option>
	  <option value="audi">What is the name of the town where you were born?</option>
	  </select>
	  <br>
	  <br>
	  <input class="un " type="text" align="center" placeholder="Answer 2">
	  <select id="select-button3" name="q3">
	  <option disabled selected value>Question 3</option>
	  <option value="volvo">Name of your First Pet?</option>
	  <option value="saab">Name of the first Movie you watched?</option>
	  <option value="mercedes">What is your mother's maiden name?</option>
	  <option value="audi">What is the name of the town where you were born?</option>
	  </select>
	  <br>
	  <br>
	  <input class="un " type="text" align="center" placeholder="Answer 3">
	  <a class="submit" align="center">Register</a>
    </form>      
                
    </div>
</body>
</html>