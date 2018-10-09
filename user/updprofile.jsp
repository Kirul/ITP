<%-- 
    Document   : updprofile
    Created on : Aug 11, 2018, 12:39:48 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!--getting the database connection-->
<%
    String itemid = request.getParameter("userid");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "track&field";
    String userid = "root";
    String password = "";
    session.setAttribute("userid",userid);
    
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
         <jsp:include page="userHome.jsp"/>
    </head>

    <body>
        
        <center><h3>UPDATE PROFILE DETAILS</h3></center>
        
        <%

    //getting all item details from item table
try{

connection =DriverManager.getConnection(connectionUrl+database, userid, password);

statement=connection.createStatement();

String sql ="SELECT * FROM userlogin ";

resultSet = statement.executeQuery(sql);

while(resultSet.next()){

%>


<center>
   <form action="updatepro.jsp" method="post">
   
       <input name="userid" type="text" value="<%=resultSet.getString("userid") %>" hidden>
  
      User Name :
        <input name="username" type="text" value="<%=resultSet.getString("username") %>"><br><br>

      Address :
        <input name="address" type="text" value="<%=resultSet.getString("address") %>" ><br><br>
        
      Password :
        <input name="password" type="text" value="<%=resultSet.getString("password") %>"><br><br>

      Phone Number :
        <input name="phone" type="text" value="<%=resultSet.getString("phone") %>" ><br><br>
  
      Email :
        <input name="email" type="text" value="<%=resultSet.getString("email") %>" ><br><br>
        
        
        <button type="submit" name>UPDATE</button><br><br>
  
        
        
  </form>
</center>
        
        <%

}
connection.close();

} catch (Exception e) 
{
e.printStackTrace();

}
%>
     
<center><button style="width:100px;height:50px;color: black" type="submit" name="Delete Users" onclick="location.href='deleteus.jsp'">Delete Users</button></center>
    </body>
</html>