
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update PTS 3</title>
        
    </head>
    <body>
         <%!
            Connection conn;
            PreparedStatement pstmt;
            ResultSet result;
            String qry;
            Integer eid;
          
        %>
        <%
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
            if(request.getParameter("btnUpd")!= null){
                eid = Integer.parseInt(request.getParameter("hiddenId"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry="UPDATE  placesam SET eid =? ,  ename =? , type =? ,gender =?,date =?,time =?,place =?,sid =?,faculty =?,record =? WHERE eid =?" ;
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setString(1, request.getParameter("eid"));
                    pstmt.setString(2, request.getParameter("ename"));
                    pstmt.setString(3, request.getParameter("type"));
                    pstmt.setString(4, request.getParameter("gender"));
                    pstmt.setString(5, request.getParameter("date"));
                    pstmt.setString(6, request.getParameter("time"));
                    pstmt.setString(7, request.getParameter("place"));
                    pstmt.setString(8, request.getParameter("sid"));
                    pstmt.setString(9, request.getParameter("faculty"));
                    pstmt.setString(10, request.getParameter("record"));

                    

                    pstmt.setInt(5, eid);
                    pstmt.executeUpdate();
                    response.sendRedirect("./PlaceTheStudentsAM3.jsp");
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }
            }
            if(request.getParameter("id")!=null && request.getParameter("id") != ""){
                eid = Integer.parseInt(request.getParameter("id"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry="SELECT * FROM placesam WHERE eid =?";
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setInt(1, eid);
                    result=pstmt.executeQuery(); 
                    result.first();
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }
            }else{
                response.sendRedirect("./PlaceTheStudents3.jsp");
            }
            
        %>

  <div>
      
    </div>         
    

        <center>
        <h1>Edit Details</h1>
        <form id="editForm" action="" method="POST">
            <table border="0" cellspacing="5" cellpadding="5"> 
                <tbody>
                    <tr>
                        <td><b>Event ID: </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=eid%>"/>
                            <input type="text" name="eid" id="eid" value ='<%=result.getString("eid")%>' /></td>
                    </tr>
                    
                     <tr>
                        <td><b>Event Name: </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=eid%>"/>
                            <input type="text" name="ename" id="ename" value ='<%=result.getString("ename")%>' /></td>
                    </tr>
                    <tr>
                        <td><b>Sports meet Type: </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=eid%>"/>
                            <input type="text" name="type" id="type" value ='<%=result.getString("type")%>' /></td>
                    </tr>
                    <tr>
                        <td><b>Gender:  </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=eid%>"/>
                            <input type="text" name="gender" id="gender" value ='<%=result.getString("gender")%>' /></td>
                    </tr>
                   <tr>
                        <td><b>Date:</b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=eid%>"/>
                            <input type="date" name="date" id="date" value ='<%=result.getString("date")%>' /></td>
                    </tr>
                    
                    <tr>
                        <td><b>Time:</b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=eid%>"/>
                            <input type="time" name="time" id="time" value ='<%=result.getString("time")%>' /></td>
                    </tr>
                    
                     <tr>
                        <td><b>Place : </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=eid%>"/>
                            <input type="text" name="place" id="place" value ='<%=result.getString("place")%>' /></td>
                    </tr>
                    
                     <tr>
                        <td><b>Student ID : </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=eid%>"/>
                            <input type="text" name="sid" id="sid" value ='<%=result.getString("sid")%>' /></td>
                    </tr>
                    
                     <tr>
                        <td><b>Faculty : </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=eid%>"/>
                            <input type="text" name="faculty" id="faculty" value ='<%=result.getString("faculty")%>' /></td>
                    </tr>
                    
                     <tr>
                        <td><b>Record: </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=eid%>"/>
                            <input type="text" name="record" id="record" value ='<%=result.getString("record")%>' /></td>
                    </tr>
                    
                    
                    
                    <tr>
                        <td>
                            <input type="submit" name="btnUpd" value="Edit Details" id="btnUpd"></td>
                        <td></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
    </center>
        

    </body>
</html>