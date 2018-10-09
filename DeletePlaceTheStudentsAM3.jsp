<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Trainee</title>
    </head>
    <body>
        <%!
            Connection conn;
            PreparedStatement pstmt;
            String qry;
            Integer eid;

        %>
        <%
            if(request.getParameter("id")!=null && request.getParameter("id") != ""){
                eid = Integer.parseInt(request.getParameter("id"));
                try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/track&field","root","");
                qry="DELETE FROM placesam WHERE eid =?";
                pstmt= conn.prepareStatement(qry);
                pstmt.setInt(1, eid);
                pstmt.executeUpdate();
                response.sendRedirect("./PlaceTheStudentsAM3.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        %>
    </body>
</html>