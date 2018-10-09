<%-- 
    Document   : itpLogin
    Created on : Aug 10, 2018, 10:35:20 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        
        <jsp:include page="userHome.jsp"/>
    </head>
    <body>
        
    <center>
        
        <form name="myForm" method="post" action="login" >
            
            <h1>Please login here..</h1>
            
            <table>
                <tr>
            <td><lable>User ID</lable></td>
            <td><input type="text" name="userid" placeholder="Enter User ID" required="required" ></td>
            
            </tr>
            <tr>
             <td><lable>Password</lable></td>
             <td><input type="password" name="password" placeholder="Enter Password"  required="required"></td>
             </tr>
             <tr></tr>
             <tr></tr>
             <tr>
                 <td><input type="submit" name="action" value="Login"/>&nbsp;&nbsp;&nbsp;
                 <input type="reset" value="Reset" /></td>
             </tr>
             
             <tr></tr>
             <tr></tr>
             <tr><td><button style="width:100px;height:50px;color: black" type="submit" name="forgot password" onclick="location.href='forgot.jsp'">Forgot Password</button></td></tr>
             
             </table>
        </form>
        
        
    </center>
    </body>
</html>
