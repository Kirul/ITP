<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<% String driverName="com.mysql.jdbc.Driver";%>
<% String url="jdbc:mysql://localhost:3306/";%>
 <%String database = "university";%>
<% String user="root";%>
<%String psw="";%>
 

<%   
    String name=request.getParameter("name");
    String faculty=request.getParameter("faculty"); 
   String event=request.getParameter("event"); 

    String performance=request.getParameter("performance"); 
    String points=request.getParameter("points"); 
    String date=request.getParameter("date"); 


%> 
 

<!DOCTYPE html>
<html>
    <head>
        <link type="text/css" rel="stylesheet" href="Admin css.css">
    </head>
    <body>
      
    <% 
        try{
            Connection con=DriverManager.getConnection(url+database, user, psw);
            Statement st=con.createStatement();
            int i=st.executeUpdate("Update records SET name='"+name+"',faculty='"+faculty+"',performance='"+performance+"',points='"+points+"',date='"+date+"' where event='"+event+"'");
            out.println("Data is successfully updated!");
        }catch(Exception e){
            System.out.print(e);
            e.printStackTrace();
        }
    %>
    
        <center>
            <br><br>
            <a href="Records.jsp"><button>OK</button></a>
            <br><br>
            
        </center>
 
    </body>
</html>