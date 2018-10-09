<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<% String driverName="com.mysql.jdbc.Driver";%>
<% String url="jdbc:mysql://localhost:3306/";%>
 <%String database = "university";%>
<% String user="root";%>
<%String psw="";%>
<%
String event=request.getParameter("event");
session.setAttribute("user",event);
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field", "root", "");
Statement st=conn.createStatement();
int i=st.executeUpdate("DELETE FROM records WHERE event='"+event+"'");
out.println("Data Deleted Successfully!");
}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="Admin css.css">
    </head>
    <body>
      
        <center>
            <a href="Records.jsp"><button>OK</button></a><br><br>
            
        </center>
    </body>
</html>