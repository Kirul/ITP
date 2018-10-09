<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Distributor</title>
    </head>
    <body>
        
        <%!
            Connection conn;
            PreparedStatement pstmt;
            String qry;
            Integer sid;

        %>
        <%
            if(request.getParameter("id")!=null && request.getParameter("id") != ""){
                sid = Integer.parseInt(request.getParameter("id"));
                try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                qry="DELETE FROM doabp WHERE sid =?";
                pstmt= conn.prepareStatement(qry);
                pstmt.setInt(1, sid);
                pstmt.executeUpdate();
                response.sendRedirect("./DistributionOfAwards.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        %>
    </body>
</html>