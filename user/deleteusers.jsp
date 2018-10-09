<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<% String driverName="com.mysql.jdbc.Driver";%>
<% String url="jdbc:mysql://localhost:3306/";%>
 <%String database = "track&field";%>
<% String user="root";%>
<%String psw="";%>
<%
String userid=request.getParameter("userid");
session.setAttribute("user",userid);
%>

<!DOCTYPE html>
<html>
    <head>
        
    </head>
<body>
    
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
Statement st=conn.createStatement();
//delete necessary records from database
int i=st.executeUpdate("DELETE FROM userlogin where userid='"+userid+"'");
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
</body>
</html>