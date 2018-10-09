
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv ="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Best Performance</title>
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

        <img src="pictures/bestperformance.png" width="100%" height="20%">
        <%!
            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            Integer sid;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                stat= conn.createStatement();
                qry="SELECT * FROM bp";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    <center>        
       
        
        </br>
        </br>
        <table style="width:100%;align:center">
            <thead>
                <tr>
                    <th><b>Student Name</b></th>
                    
                    <th><b>Event</b></th>
                    <th><b>Performance</b></th>
                    <th><b>Points</b></th>
                    <th><b>Faculty</b></th>
                   <th colspan="3">Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while (result.next()){
                        sid=result.getInt("sid");
                %>
                <tr>

                    <td align="center"><%=result.getString("name")%></td>
                    <td align="center"><%=result.getString("event")%></td>
                    <td align="center"><%=result.getString("performance")%></td>
                    <td align="center"><%=result.getString("points")%></td>
                    <td align="center"><%=result.getString("faculty")%></td>


                    <td align="center"><a href="updateBP.jsp?id=<%=sid%>">Update</a></td>
                    <td align="center"><a href="deleteBP.jsp?id=<%=sid%>" onclick="return confirm('Are you Sure?')">Delete</a></td>
                     <td align="center"><a href="AddDOABP.jsp?id=<%=sid%>">Add Distributor</a></td>
                </tr>
                <%
                    }
                %> 
                
            </tbody>
        </table>

                
    </center>
   
   
    </body>
</html>