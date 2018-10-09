<%-- 
    Document   : MeetEvents
    Created on : Jul 23, 2018, 9:55:43 AM
    Author     : User
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%--@page import="com.mysql.jdbc.Connection"--%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.*"%>
<%Class.forName("com.mysql.jdbc.Driver");%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Meet Manager Details For Allowances</title>
        
        <jsp:include page="userHome.jsp"/>
    </head>
    <body>
        
                <center><h1>Meet Manager Details For Allowances</h1></center>
<center></center>


<tr>
        
    </tr>
    <tr>
        <tr bgcolor="lightblue">
        <td><b> User ID</b></td>
        <td><b> EID</b></td>
        <td><b> Events </b></td>
        <td><b> Grading </b></td>
        
    </tr>
    
        <!--getting the database connection-->
        <% String url="jdbc:mysql://localhost/track&field";
           String user="root";
           String pass="";
           String userid="";

            try{
               //getting all item details from database 
               Connection conn=DriverManager.getConnection(url,user,pass);
                Statement ss=conn.createStatement();
            String sql1="SELECT * from grading ";
            
            
            ResultSet rs1=ss.executeQuery(sql1);
            while(rs1.next()){
                %>
                 
                <td><%=rs1.getString("userid")%></td>
                <td><%=rs1.getString("eid")%></td>
                <td><%=rs1.getString("nevents")%></td>
                <td><%=rs1.getString("grading")%></td>
            </tr>
            
            <%   
                }

            conn.close();
           }catch(SQLException e){
               e.printStackTrace();
               
           }
        %>

       
       
       <br><br><br>
        
        
    </body>
</html>
