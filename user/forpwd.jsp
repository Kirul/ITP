<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> update Password </title>
<script type="text/javascript">
	function validatePassword() {
		var pass = document.forms["forgot"]["pass"].value;
		var cpass = document.forms["forgot"]["cpass"].value;
		
		if (pass != cpass) {
			alert("confirm password is not the same as the password you typed");
			return false;
		}
	}
</script>
</head>
<body>
<center>
<form action="forgot" method="post" name="forgot" onsubmit="return validatePassword()">
<h2> NOTE :- Enter your E-Mail to give your new Password. </h2>
<table>
	<tr>
	<td>Email </td>
	<td> <input type="text" name="email" required="Please enter Email."> </td>
	</tr>
	<tr>
	<td>New Password </td>
	<td> <input type="password" name="pass" required="required"> </td>
	</tr>
	<tr>
	<td>Confirm Password </td>
	<td> <input type="password" name="cpass" required="required"> </td>
	</tr>
</table>
	<input type="submit" value="Submit">
	<input type="reset" name="Reset">
</form>
</center>

</body>
</html>