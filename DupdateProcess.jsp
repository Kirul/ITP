<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<% String driverName="com.mysql.jdbc.Driver";%>
<% String url="jdbc:mysql://localhost:3306/";%>
 <%String database = "university";%>
<% String user="root";%>
<%String psw="";%>
 

<%   
    String destination=request.getParameter("destination");
    String charge=request.getParameter("charge"); 
    //session.setAttribute("user",destination); 
%> 
 

<!DOCTYPE html>
<html>
    <head>
   
    </head>
    <body>
        

    <% 
        try{
            Connection con=DriverManager.getConnection(url+database, user, psw);
            Statement st=con.createStatement();
            int i=st.executeUpdate("Update delivery SET delcharge='"+charge+"' where destination='"+destination+"'");
            out.println("Data is successfully updated!");
        }catch(Exception e){
            System.out.print(e);
            e.printStackTrace();
        }
    %>
    
        <center>
            <br><br>
            <a href="Insert.jsp"><button>OK</button></a>
            <br><br>
            
        </center>
 
    </body>
</html>