<%-- 
    Document   : change
    Created on : Aug 26, 2018, 6:38:27 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
         <jsp:include page="userHome.jsp"/>
    </head>
    <body>
        <center>
            <br><br><br><br>
<form action="changepwd.jsp" method="post">
<table>
<tr><td>User ID</td><td><input type="text" name="userid" ></td></tr>   
<tr><td>Current Password</td><td><input type="password" name="password" ></td></tr>
<tr><td>New Password</td><td><input type="password" name="newpassword"></td></tr>
<tr><td>Confirm Password</td><td><input type="password" name="confirm"></td></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr></tr>
<tr><td><input type="submit" value="Change Password"></td><td><input type="reset" value="Cancel"></td></tr>
</table>
</form>
    </center>
    </body>
</html>
