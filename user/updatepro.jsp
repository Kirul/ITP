<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<% String driverName="com.mysql.jdbc.Driver";%>
<% String url="jdbc:mysql://localhost:3306/";%>
 <%String database = "track&field";%>
<% String user="root";%>
<%String psw="";%>
 

<%   

  
String userid=request.getParameter("userid");

String username=request.getParameter("username");
  
String address=request.getParameter("address"); 

String password=request.getParameter("password");

String phone=request.getParameter("phone");
  
String email=request.getParameter("email"); 

session.setAttribute("userid",userid);
  
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

//update necessary records of the table
int i=st.executeUpdate("Update userlogin set username='"+username+"', address='"+address+"',password='"+password+"', phone='"+phone+"',email='"+email+"' where userid='"+userid+"'");



out.println("Data is successfully updated!");

}
catch(Exception e)

{

System.out.print(e);

e.printStackTrace();

}

%>

</body>
</html>