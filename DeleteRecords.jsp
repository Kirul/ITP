<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
   String event = request.getParameter("event");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "track&field";
String userid = "root";
String password = "";
session.setAttribute("userid",event);
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
   
<body>
    
    <%
        try{
            connection = DriverManager.getConnection(connectionUrl+database, userid, password);
            statement=connection.createStatement();
            String sql ="SELECT * FROM records";
            resultSet = statement.executeQuery(sql);
            int i=0;
            while(resultSet.next()){
    %>
    <table>
        <tr>
            <td><%=resultSet.getString("name") %></td>
            <td><%=resultSet.getString("faculty") %></td>
            <td><%=resultSet.getString("event") %></td>
            <td><%=resultSet.getString("performance") %></td>
            <td><%=resultSet.getString("points") %></td>
            <td><%=resultSet.getString("date") %></td>

            <td><a href="DeleteProcess.jsp?event=<%=resultSet.getString("event") %>"><button>Delete</button></a></td>
        </tr>
    <%
            i++;
            }
            connection.close();
            } catch (Exception e) {
            e.printStackTrace();
            }
    %>
        </table>
        <br><br>
       
</center>
    </body>
</html>