<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>


<!DOCTYPE html>

<html>
    <head>
        <title>Place the students 2</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                qry="INSERT INTO places(ename,date,time,place,SID,FacId,Record) VALUES (?,?,?,?,?,?,?)";
                pstmt= conn.prepareStatement(qry);
                pstmt.setString(1, request.getParameter("ename"));
                pstmt.setString(2, request.getParameter("date"));
                pstmt.setString(3, request.getParameter("time"));
                pstmt.setString(4, request.getParameter("place"));
                pstmt.setString(5, request.getParameter("SID"));
                pstmt.setString(6, request.getParameter("FacId"));
                pstmt.setString(7, request.getParameter("Record"));

                pstmt.executeUpdate();
                response.sendRedirect("./ReceivePlaceTheStudents.jsp");
            } catch(ClassNotFoundException cnfe){
               System.out.println("Class not found exception" + cnfe.toString());
            } catch(SQLException sqle){
                out.println("SQL eCXCEPTION " + sqle);
            }
            }
        %>
   
        <form name="PlaceTheStudents" action="POST" action="" onsubmit="">
           <div align="center">
		    
			<h1 style="font-family:Times New Roman;">Place the students</h1>
		
			
		
		<table>
		
		<tr>
                    <td>
			Event Id:
                    </td>
                    <td>
				<input type="text" name="EID">
                    </td>
		</tr>
		
		<tr>
                    <td>
			Date:
                    </td>
                    <td>
				<input type="date" name="date">
                    </td>
		</tr>
		
		
		<tr>
                    <td>
			Time:
                    </td>
                    <td>
				<input type="time" name="time">
                    </td>
		</tr>
		
	</table>
		
		
		<br><br><br>

	<!--<table>
		<tr>
			<td>
				<h3>Highest Record</h3>
			</td>
			<td></td>
			<td></td>
			<td></td>
			
			<td>
				<h1>20.3 s</h1> 
 			</td>
		</tr>
	
	</table>
-->



		
	
		
		
		<table>
		
		<tr>
			<td align="center">
				<h3>Place</h3>
			</td>
			<td align="center">
				<h3>Student ID</h3>
			</td>
			<td align="center">
				<h3>Faculty ID</h3>
			</td>
			<td align="center">
				<h3>Record</h3>
			</td>
		</tr>
		
		
		<tr>
		
		<tr>
			<td>
                 <input type="text" name="place"><br>
			</td>
			<td>
		<input type="text" name="SID">
			</td>
			<td>
		<input type="text" name="FacId">
			</td>
			<td>
		<input type="text" name="Record">
			</td>
		</tr>
                
                
                <tr>
                        <td><input type="submit" name="btnAdd" value="Submit" id="btnAdd"></td>
                        <td></td>
                    </tr>
		
		
	
	</table>
	
            
			<br>
                       
		  

			
	</form>
        
          <a href="">View Results</a>
		    <a href="">Add a new Record</a>
            
        </div>
    </body>
</html>
