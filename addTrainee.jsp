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
        <title>Add Trainee</title>
      
    
    
    </head>
    <body>
        <%!
            Connection conn;
            PreparedStatement pstmt;
            String qry;           
        %>
        <%
            if(request.getParameter("btnAdd")!=null){
                try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/xgym","root","");
                qry="INSERT INTO trainee(traineename,traineeid,traineetype,message) VALUES (?,?,?,?)";
                pstmt= conn.prepareStatement(qry);
                pstmt.setString(1, request.getParameter("traineename"));
                pstmt.setString(2, request.getParameter("traineeid"));
                pstmt.setString(3, request.getParameter("traineetype"));
                pstmt.setString(4, request.getParameter("message"));
                pstmt.executeUpdate();
                response.sendRedirect("./Trainee.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        %>
   
        
 <div>
      <nav class="nav">
       
      
        
   <!-- part with logo and login-->
         <table class="part01">
            <tr>
                <td><img src="../pics/user.png" alt="logo" height="80px" width="80px"></td>
                <td>
                    <h3>welcome  <%=username%></h3>
                  <h3><a href="index.html">Logout</a></h3>
                </td>
            </tr>
        </table>
 
        </nav>
    </div>         
    

    <center>
        <h1 align="center">Add Trainee</h1>
        <form id="addForm" action="" method="POST" name="TraineeForm" onsubmit="">
             
            
            <br><br><img src="pics/humanicon.jpg" width="20%" height="5%"><br>

            <table border="0" cellspacing="5" cellpadding="5"> 
                <tbody>
                    <tr>
                        <td><b>Trainee Name : </b></td>
                        <td><input type="text" name="traineename" id="traineename" required/></td>
                    </tr>
                    <tr>
                        <td><b>Trainee ID:</b> </td>
                        <td><input type="text" name="traineeid" id="traineeid" /></td>
                    </tr>
                    <tr>
                        <td><b>Trainee Type : </b></td>
                        <td><input type="text" name="traineetype" id="traineetype" /></td>
                    </tr>
                    <tr>
                        <td><b>Message:</b></td>
                        <td><textarea name="message" id="message" /></textarea></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" name="btnAdd" value="Add Trainee" id="btnAdd"></td>
                        <td></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
    </center>

  
        
  </body>
</html>