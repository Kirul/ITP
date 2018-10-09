
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Place the Students - event declaration</title>
      
        <style>
            .A{
                background-color:lightgrey;
                height: 600px;
                width: 100%;
                
            }
            
            thbody{
                text-color:white;
            }
        </style>
    </head>
    <body>
        <%!
            Connection conn;
            PreparedStatement pstmt;
            String qry;           
            Integer eid;
        %>
        <%
            if(request.getParameter("btnAdd")!=null){
                try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                qry="INSERT INTO placeff(eid,ename,type,gender,date,time) VALUES (?,?,?,?,?,?)";
                pstmt= conn.prepareStatement(qry);
                 pstmt.setString(1, request.getParameter("eid"));
                 pstmt.setString(2, request.getParameter("ename"));

                pstmt.setString(3, request.getParameter("type"));
                pstmt.setString(4, request.getParameter("gender"));
                pstmt.setString(5, request.getParameter("date"));
                pstmt.setString(6, request.getParameter("time"));


                pstmt.executeUpdate();
                response.sendRedirect("./PlaceTheStudentsFF1.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        %>
   
        
        <div>
     <header>
    <img src="pictures/mainHeader.png" width="100%" height="20%">
</header>

        
  <section class="A">
 
        
      
      
      <article>
  
                <br><br><br>
      
      
         <center>
        <h1>INSERT EVENT DETAILS</h1>
        <form id="addForm" action="PlaceTheStudentsFF.jsp" method="POST" name="" onsubmit="">
             
            

            <table border="0" cellspacing="5" cellpadding="5"> 
                <tbody>
                    <tr><td align="center">
                     <b>Event ID:</b>
                        </td></tr>
                    
                     <tr>
                        <td><input type="text" name="eid" id="eid" /></td>
                    </tr>
                    
                     <tr>
                         <td align="center"><b>Event name:</b></td></tr>
                     <tr>
                        <td><input type="text" name="ename" id="ename" /></td>
                    </tr>
                    
                    <tr>
                        <td align="center"><b>SportsMeet Type : </b></td></tr>
                    <tr>
                        <td>
                            <input type="checkbox" name="type" value="Annual"  >Annual
                        
                        <input type="checkbox" name="type" value="freshers" checked>Freshers</td>
                    </tr>
                    
                    <tr>
                        <td align="center"><b>Gender : </b></td></tr>
                    <tr>
                        <td align="center">
                    <input type="radio" name="gender" value="male" > Male<br>
                    <input type="radio" name="gender" value="female" checked> Female<br>  
                        </td>
                    </tr>
                    <tr>
                        <td align="center"><b>Date</b></td></tr>
                    <tr>
                        <td align="center"><input type="date" name="date" id="date" /></td>
                    </tr>
                    
                     <tr>
                         <td align="center"><b>Time:</b></td></tr>
                     <tr>
                        <td align="center"><input type="time" name="time" id="time" /></td>
                    </tr>
                    
                   
                    
                    <tr>
                        <td align="center"><input type="submit" name="btnAdd" value="Add Event" id="btnAdd"></td>
                        <td></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
    </center>

        </div>
        </article>
      </section>
  </body>
</html>