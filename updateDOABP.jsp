
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Distributor</title>
        
    </head>
    <body>
         <header>
    <img src="pictures/mainHeader.png" width="100%" height="20%">
        </header>
         <%!
            Connection conn;
            PreparedStatement pstmt;
            ResultSet result;
            String qry;
            Integer sid;
          
        %>
        <%
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
            if(request.getParameter("btnUpd")!= null){
                sid = Integer.parseInt(request.getParameter("hiddenId"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry="UPDATE  doabp SET name =? , event =? ,performance =?,points =?,faculty =?,distributor =? WHERE sid =?" ;
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setString(1, request.getParameter("name"));
                    pstmt.setString(2, request.getParameter("event"));
                    pstmt.setString(3, request.getParameter("performance"));

                    pstmt.setString(4, request.getParameter("points"));
                    pstmt.setString(5, request.getParameter("faculty"));
                   pstmt.setString(6, request.getParameter("distributor"));
                    pstmt.setInt(7, sid);

                    pstmt.executeUpdate();
                    response.sendRedirect("./DistributionOfAwards.jsp");
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }
            }
            if(request.getParameter("id")!=null && request.getParameter("id") != ""){
                sid = Integer.parseInt(request.getParameter("id"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry="SELECT * FROM doabp WHERE sid =?";
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setInt(1, sid);
                    result=pstmt.executeQuery(); 
                    result.first();
                
                } catch(ClassNotFoundException cnfe){
                   System.out.println("Class not found exception" + cnfe.toString());
                } catch(SQLException sqle){
                    out.println("SQL eCXCEPTION " + sqle);
                }
            }else{
                response.sendRedirect("./Trainee.jsp");
            }
            
        %>

  <div>
      
    </div>         
    

        <center>
        <h1>Edit Details of Distributor</h1>
        <form id="editForm" action="" method="POST">
            <table border="0" cellspacing="5" cellpadding="5"> 
                <tbody>
                    
                    
                    <tr>
                        <td><b>Student Name : </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=sid%>"/>
                            <input type="text" name="name" id="name" value ='<%=result.getString("name")%>' /></td>
                    </tr>
                    <tr>
                        <td><b>Event:  </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=sid%>"/>
                            <input type="text" name="event" id="event" value ='<%=result.getString("event")%>' /></td>
                    </tr>
                    
                    <tr>
                        <td><b>Performance:  </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=sid%>"/>
                            <input type="text" name="performance" id="performance" value ='<%=result.getString("performance")%>' /></td>
                    </tr>
                    
                    <tr>
                        <td><b>Points:  </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=sid%>"/>
                            <input type="text" name="points" id="points" value ='<%=result.getString("points")%>' /></td>
                    </tr>
                    
                    <tr>
                        <td><b>Faculty:  </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=sid%>"/>
                            <input type="text" name="faculty" id="faculty" value ='<%=result.getString("faculty")%>' /></td>
                    </tr>
                    
                    <tr>
                        <td><b>Distributor:  </b></td>
                        <td>
                            <input type="hidden" id="hiddenId" name="hiddenId" value ="<%=sid%>"/>
                            <input type="text" name="distributor" id="distributor" value ='<%=result.getString("distributor")%>' /></td>
                    </tr>
                  
                    
                    <tr>
                        <td>
                            <input type="submit" name="btnUpd" value="Edit Distributor" id="btnUpd"></td>
                        <td></td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
    </center>
        

    </body>
</html>