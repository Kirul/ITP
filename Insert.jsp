

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String insertedDestination = request.getParameter("destination");
    String insertedCharge = request.getParameter("charge");
    
    String url = "jdbc:mysql://localhost/university";
    String user = "root";
    String pass = "";
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,user,pass);
        Statement st = con.createStatement();
        
        int i = st.executeUpdate("INSERT INTO delivery(destination,delcharge)VALUES('"+insertedDestination+"','"+insertedCharge+"')");
        out.println("Data Is Successfully Inserted !");
    }catch(Exception e){
        System.out.println(e);
        e.printStackTrace();
    }
%>

<%
    String destination = request.getParameter("destination");
    session.setAttribute("destination",destination);
    
    
    String charge = request.getParameter("charge");
    session.setAttribute("charge",charge);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Delivery Details</title>
       
           
    </head>
   
            
            
            
            
        <body>
        
    
        <h1>INSERT DELIVERY DETAILS</h1>
        <form method="post" name="insertForm" action="Insert.jsp">
            Destination : <input type="text" name="destination">
            <br><br><br>
            Charge      : <input type="text" name="charge">
            <br><br><br>
            <input type="submit" name="Insert">
            <input type="reset"  name="Reset">            
           
           
        </form>
        
       
   
    </body>
</html>