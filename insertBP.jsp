<% 
        String username=request.getParameter("username");
        session.setAttribute("username",username);
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Best Performance</title>
      
    <style>
            .A{
                background-color:whitesmoke;
                height: 600px;
                width: 100%;
                
            }
            
            thbody{
                text-color:white;
            }
        </style>
    
    </head>
    <body>
        
        <header>
    <img src="pictures/mainHeader.png" width="100%" height="20%">
        </header>

        <img src="pictures/bestperformance.png" width="100%" height="20%">
        <%!
            Connection conn;
            PreparedStatement pstmt;
            String qry;           
            Integer sid;
        %>
        <%
            if(request.getParameter("btnAdd")!=null){
                try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                qry="INSERT INTO bp(sid,name,event,performance,points,faculty) VALUES (?,?,?,?,?,?)";
                pstmt= conn.prepareStatement(qry);
                pstmt.setString(1, request.getParameter("sid"));
                pstmt.setString(2, request.getParameter("name"));
                pstmt.setString(3, request.getParameter("event"));
                pstmt.setString(4, request.getParameter("performance"));
                pstmt.setString(5, request.getParameter("points"));
                pstmt.setString(6, request.getParameter("faculty"));


                pstmt.executeUpdate();
                response.sendRedirect("./BP.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        %>
   
        
 <section class="A">

    <center>
        <h1 align="center">Enter Details</h1>
        <form id="addForm" action="insertBP.jsp" method="POST" name="" onsubmit="">
             
            

            <table border="0" cellspacing="5" cellpadding="5"> 
                <tbody>
                     <tr>
                        <td><b>Student ID:</b></td>
                        <td><input type="text" name="sid" id="sid" /></td>
                    </tr>
                    
                    <tr>
                        <td><b>Name : </b></td>
                        <td><input type="text" name="name" id="name" required/></td>
                    </tr>
                    
                    <tr>
                        <td><b>Event : </b></td>
                        <td><input type="text" name="event" id="event" /></td>
                    </tr>
                    <tr>
                        <td><b>Performance:</b></td>
                        <td><input type="text" name="performance" id="performance" /></td>
                    </tr>
                    
                     <tr>
                        <td><b>Points:</b></td>
                        <td><input type="text" name="points" id="points" /></td>
                    </tr>
                    
                    <tr>
                        <td><b>faculty:</b> </td>
                        <td><input type="text" name="faculty" id="faculty" /></td>
                    </tr>
                    
                   
                    
                    <tr>
                        <td><input type="submit" name="btnAdd" value="ADD" id="btnAdd"></td>
                        <td></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
    </center>
 </section>
  
        
  </body>
</html>