
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv ="Content-Type" content="text/html; charset=UTF-8">
        <title>Display DOABP</title>
        
     <style>
            table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    
            
     </style>
    </head>
    <body>
        <div>
      
    </div>         
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
                qry="SELECT * FROM doabp";
                result=stat.executeQuery(qry);  
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
        %>
    <center>
         <header>
    <img src="pictures/mainHeader.png" width="100%" height="20%">
        </header>
               <img src="pictures/bestperformance.png" width="100%" height="20%">

        
        </br>
        </br>
        <table style="width:100%;align:center">
            <thead>
                <tr>

                    <th style="background-color:lightblue"><b>Name</b></th>
                    
                    <th style="background-color:lightblue"><b>Event</b></th>
                    <th style="background-color:lightblue"><b>Performance</b></th>
                    <th style="background-color:lightblue"><b>Points</b></th>
                    <th style="background-color:lightblue"><b>Faculty</b></th>
                    <th style="background-color:lightblue"><b>Distributor</b></th>

                    <th style="background-color:lightblue" colspan="2">Actions</th>
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
                    <td align="center"><%=result.getString("distributor")%></td>



                    <td align="center"><a href="updateDOABP.jsp?id=<%=sid%>">Update</a></td>
                    <td align="center"><a href="deleteDOABP.jsp?id=<%=sid%>" onclick="return confirm('Are you Sure?')">Delete</a></td>
                </tr>
                <%
                    }
                %> 
                
            </tbody>
        </table>

                 <h2><a href ="BP.jsp">Add a New performance</a></h2>
                
    </center>
   
   
    </body>
</html>