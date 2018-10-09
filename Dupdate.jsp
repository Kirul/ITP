<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String destination = request.getParameter("destination");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "track&field";
    String userid = "root";
    String password = "";
    session.setAttribute("userid",destination);
    
    try{
        Class.forName(driver);
    }catch(ClassNotFoundException e){
        e.printStackTrace();
    }
    
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%> 

<!DOCTYPE html>
<html>
    <head>
        <title>Update Delivery Details</title>
       
    </head>
    <body>
       

    <%
        try{
            connection =DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="SELECT * FROM delivery ";
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>

 
    <form action="DupdateProcess.jsp" method="post" name="updateForm">  
            <input name="destination" type="text" value="<%=resultSet.getString("destination") %>" hidden>  
            Destination : <input name="destination" type="text" value="<%=resultSet.getString("destination") %>">
            Charge : <input name="charge" type="text" value="<%=resultSet.getString("delcharge") %>" >  
            
            <button type="submit" name>UPDATE</button>  
            <br><br>
        </form>      
            <br><br>
    <%
    }
        connection.close();
        } catch (Exception e){
            e.printStackTrace();
        }
    %>
    
      
        </center>
    </body>
</html>