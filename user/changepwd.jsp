<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%
 
String userid=request.getParameter("userid");    
String password=request.getParameter("password");
String newpassword=request.getParameter("newpassword");
String conpass=request.getParameter("confirm");
String pass="";

try{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/track&field","root","");
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery("select * from userlogin where userid='"+userid+"'");
if(rs.next()){
pass=rs.getString("password");
}
if(newpassword.equals(conpass))
{
st=conn.createStatement();
int i=st.executeUpdate("update userlogin set password='"+newpassword+"' where userid='"+userid+"'");
out.println("Password changed successfully");
st.close();
conn.close();
}
else{
out.println(" Previous password isn't match successfully");
}

}
catch(Exception e){
out.println(e);
}
%>
