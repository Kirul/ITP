<%-- 
    Document   : forgot
    Created on : Aug 26, 2018, 6:51:45 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="userHome.jsp"/>
    </head>
    <body>
    <center><h2>Forgot Password</h2></center>
<center>
<form action="forpwd.jsp" method="POST">
    <table>
        <tr><td>User ID :</td>
            <td><input type="text" name="userid" value="" /></td></tr>
        <tr><td>Email  :</td>
            <td><input type="text" name="email" value="" /></td></tr>
        <tr><td>New Password :</td>
            <td><input type="password" name="newpassword" value="" /></td></tr>
        <tr><td>Confirm Password :</td>
            <td><input type="password" name="confirmpassword" value="" /></td></tr>

        <tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
        <tr><td><input type="submit" value="Submit" /></td><td><input type="reset" value="Cancel" /></td></tr>

</table>
</form>
</center>
    </body>
</html>
