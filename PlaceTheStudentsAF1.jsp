
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv ="Content-Type" content="text/html; charset=UTF-8">
        <title>Events Held</title>
        
    
    </head>
    <body>
         
        <%!
            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            Integer eid;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                stat= conn.createStatement();
                qry="SELECT * FROM placeaf";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
  
    
     <header>
    <img src="pictures/mainHeader.png" width="100%" height="20%">
    </header>
    
    <center>
        
        <h1>EVENTS HELD</h1>
        
       
        
        </br>
        </br>
        <table border="1" cellspacing="5" cellpadding="4" style="border-style:solid;">
            <thead>
                <tr>
                    <th><b>eid</b></th>
                   <th><b>ename</b></th>

                    <th><b>type</b></th>
                    
                    <th><b>gender</b></th>
                    <th><b>date</b></th>
                    <th><b>time</b></th>
                   <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while (result.next()){
                        eid=result.getInt("eid");
                %>
                <tr>
                    <td><%=result.getString("eid")%></td>
                    <td><%=result.getString("ename")%></td>


                    <td><%=result.getString("type")%></td>
                    <td><%=result.getString("gender")%></td>
                    <td><%=result.getString("date")%></td>
                    <td><%=result.getString("time")%></td>


                    <td><a href="PlaceTheStudentsAF2.jsp?id=<%=eid%>">Place the Students</a></td>
                </tr>
                <%
                    }
                %> 
                
            </tbody>
        </table>

                
    </center>
   
   
    </body>
</html>