
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv ="Content-Type" content="text/html; charset=UTF-8">
        <title>Receive Place the students</title>
        
    
    </head>
    <body>
        <div>
      <nav class="nav">
       
        
   <!-- part with logo and login-->
        
 
        </nav>
    </div>         
        <%!
            Connection conn;
            Statement stat;
            ResultSet result;
            String qry;
            Integer EID;
        %>
        <%
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                stat= conn.createStatement();
                qry="SELECT * FROM places";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    <center>
        <h1>results</h1>
        
       
        
        </br>
        </br>
        <table border="1" cellspacing="5" cellpadding="4" style="border-style:solid;">
            <thead>
                <tr>
                    <th><b>EID</b></th>
                    <th><b>DAte</b></th>
                    <th><b>Time</b></th>
                    <th><b>Place</b></th>
                    <th><b>SID</b></th>
                    <th><b>Fac Id</b></th>
                    <th><b>Record</b></th>

                                        
                    <th colspan="2">Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                    while (result.next()){
                        EID=result.getInt("EID");
                %>
                <tr>
                    
                    <td><%=result.getString("EID")%></td>
                    <td><%=result.getString("date")%></td>
                    <td><%=result.getString("time")%></td>
                    <td><%=result.getString("place")%></td>
                    <td><%=result.getString("SID")%></td>
                    <td><%=result.getString("FacId")%></td>
                    <td><%=result.getString("Record")%></td>

                    
                    <td><a href="editTrainee.jsp?id=<%=EID%>">Update</a></td>
                    <td><a href="deleteTrainee.jsp?id=<%=EID%>" onclick="return confirm('Are you Sure?')">Delete</a></td>
                </tr>
                <%
                    }
                %> 
                
            </tbody>
        </table>

    </center>
   
   
    </body>
</html>