
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>

<!DOCTYPE html>
<html>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Freshers' Men Results</title>
        
        <style>
            table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
    
            
        </style>
    </head>
    
    <body>
        
        <nav>
        </nav>
            
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
                qry="SELECT * FROM placesfm";
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
    
    <h2 align="center">
            INTER FACULTY FRESHERS' TRACK & FIELD CHAMPIONSHIP
        </h2>
        
        <h1 align="center">Certificates</h1>
        <table style="width:100%;align:center">
            <th style="background-color:lightblue" colspan="6">
                <h2>Men</h2>
               
            </th>
            
                <tr>
                    <th style="background-color:lightblue"><b>Event Name</b></th>

                    
                    <th style="background-color:lightblue"><b>Place</b></th>
                    <th style="background-color:lightblue"><b>Student ID</b></th>
                    <th style="background-color:lightblue"><b>Faculty</b></th>


                </tr>
            
            <tbody>
                <%
                    while (result.next()){
                        eid=result.getInt("eid");
                %>
                <tr>
                    <td style="background-color:lightblue;alignment-adjust:central"><%=result.getString("ename")%></td>
                    <td align="center"><%=result.getString("place")%></td>

                    <td align="center"><%=result.getString("sid")%></td>
                    <td align="center"><%=result.getString("faculty")%></td>

                                        


                    
                </tr>
                <%
                    }
                %> 
                
            </tbody>
        </table>
                
                

                
    </center>
   
   
    </body>
</html>