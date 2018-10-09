<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String destination = request.getParameter("destination");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "university";
    String userid = "root";
    String password = "";
    session.setAttribute("userid",event);
    
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
        <title>UPDATE RECORDS</title>
        <link type="text/css" rel="stylesheet" href="Admin css.css">
    </head>
    <body>
       

<header>
    <img src="pictures/mainHeader.png" width="100%" height="20%">
</header>

        
        
        <center>
            <h1>UPDATE RECORDS</h1>

    <%
        try{
            connection =DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="SELECT * FROM records ";
            resultSet = statement.executeQuery(sql);
            while(resultSet.next()){
    %>

 
    <form action="UpdateProcess.jsp" method="post" name="updateForm">  
            <input name="event" type="text" value="<%=resultSet.getString("event") %>" hidden>  
            Name : <input name="name" type="text" value="<%=resultSet.getString("name") %>">
            Faculty : <input name="faculty" type="text" value="<%=resultSet.getString("faculty") %>" >  
            Event : <input name="event" type="text" value="<%=resultSet.getString("event") %>" >  
            Performance : <input name="performance" type="text" value="<%=resultSet.getString("performance") %>" >  
            Points : <input name="charge" type="points" value="<%=resultSet.getString("points") %>" >  
            Year : <input name="charge" type="year" value="<%=resultSet.getString("year") %>" >  

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