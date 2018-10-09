
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%--@page contentType="text/html" pageEncoding="UTF-8"--%>

<%
    String destination = request.getParameter("userid");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "university";
    String userid = "root";
    String password = "";
    
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Records</title>
        <link type="text/css" rel="stylesheet" href="Admin css.css">
        
         <style>
            table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    
            
     </style>
    </head>
    <body>
        

        <header>
    <img src="pictures/mainHeader.png" width="100%" height="20%">
        </header>

        
        <center>
        <h1>RECORDS</h1>
        
        <table style="width:100%;align:center">
            <tr bgcolor="lightblue" cellpadding="10" cellspacing="20" border="1">
                <th>Name</th>
                <th>Faculty</th>
                <th>Event</th>
                <th>Performance(s)</th>
                <th>Points</th>
                <th>Year</th>


            </tr>
            <%
                try{
                    connection = DriverManager.getConnection(connectionUrl+database,userid,password);
                    statement = connection.createStatement();
                    String sql = "SELECT * FROM records";
                    resultSet = statement.executeQuery(sql);
                    while(resultSet.next()){
                    %>
                    <tr>
                        <td align="center"><%=resultSet.getString("name")%></td>
                        <td align="center"><%=resultSet.getString("faculty")%></td>
                        <td align="center"><%=resultSet.getString("event")%></td>
                        <td align="center"><%=resultSet.getString("performance")%></td>
                        <td align="center"><%=resultSet.getString("points")%></td>
                        <td align="center"><%=resultSet.getString("year")%></td>

                    </tr>
                    <%
                    }
                    connection.close();
                }catch(Exception e){
                    e.printStackTrace();
                }
            %>
        </table>
        
        <a href="CAhomeEPM.jsp"><button>Home</button></a><br><br>
        
        
        <br><br><br>
        
        
     
        
        </center>
    </body>
</html>