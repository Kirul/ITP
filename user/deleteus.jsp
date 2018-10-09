<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
   String userid = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "track&field";
String user = "root";
String password = "";
session.setAttribute("user",userid);
Class.forName(driver);
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
    
<center><h1>DELETE USERS</h1></center>
<center><table border="1">
<tr>
<td>User ID</td>
<td>User Name</td>
<td>Address</td>
<td>Password</td>
<td>Phone Number</td>
<td>Email</td>

</tr>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, user, password);
statement=connection.createStatement();
String sql ="select * from userlogin";
resultSet = statement.executeQuery(sql);
int i=0;
while(resultSet.next()){
%>
<tr>
<td><%= resultSet.getString("userid") %></td>
<td><%=resultSet.getString("username") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%= resultSet.getString("password") %></td>
<td><%=resultSet.getString("phone") %></td>
<td><%=resultSet.getString("email") %></td>
<td><a href="deleteusers.jsp?userid=<%=resultSet.getString("userid") %>">
        <button type="button" class="delete">Delete</button></a></td>
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
    
    <button style="width:100px;height:50px;color: black" type="submit" name="Update Users" onclick="location.href='updprofile.jsp'">Update Users</button>
    </center>

</body>
</html>