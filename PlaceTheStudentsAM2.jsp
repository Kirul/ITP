
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*" %>
<%@page import ="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Place Students for Events </title>
        <style>
            .A{
                background-color: lightgray;
                height:700px;
                width:100%;
            }
        </style>
        
        
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
                 try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/university","root","");
                qry="INSERT INTO placesam(eid,ename,type,gender,date,time,place,sid,faculty,record) VALUES (?,?,?,?,?,?,?,?,?,?)";
                pstmt= conn.prepareStatement(qry);
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


                pstmt.executeUpdate();
                response.sendRedirect("./PlaceTheStudentsAM2.jsp");
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
                    qry="SELECT * FROM placeam WHERE eid =?";
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
                response.sendRedirect("./PlaceTheStudentsAM3.jsp");
            }
            
        %>

  <header>
    <img src="pictures/mainHeader.png" width="100%" height="20%">
    </header>      
    
        <div class="A">
        <center>
        <h1>Place the Students</h1>
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
                        <td><b>Place:</b></td>
                        <td>
                          <label>Select Place</label>
                        <select id = "place" name="place">
                            <option value = "1" name="place">1</option>
                            <option value = "2" name="place">2</option>
                            <option value = "3" name="place">3</option>
                            <option value = "4" name="place">4</option>
                            <option value = "5" name="place">5</option>
                            <option value = "6" name="place">6</option>
                            <option value = "7" name="place">7</option>
                            <option value = "8" name="place">8</option>
                            <option value = "9" name="place">9</option>
                            <option value = "10" name="place">10</option>
                         </select>
                         </td>
                    </tr>
                    
                    <tr>
                        <td><b>SID:</b></td>
                        <td>
                            <input type="text" name="sid" id="sid" placeholder="Enter the Student ID" ></td>
                    </tr>
                    
                    
                    <tr>
                        <td><b>Faculty:</b></td>
                        <td>
                            <label>Select Faculty</label>
                        <select id = "place" name="faculty">
                            <option value = "A" name="faculty">A-Faculty of Art</option>
                            <option value = "B" name="faculty">B-Faculty of Science</option>
                            <option value = "C" name="faculty">C-Faculty of Management Studies and Commerce</option>
                            <option value = "D" name="faculty">D-Faculty of Medicine</option>
                            <option value = "E" name="faculty">E-Faculty of Business Studies</option>
                            <option value = "F" name="faculty">F-Faculty of Applied Science</option>
                            <option value = "G" name="faculty">G-Faculty of Agriculture</option>
                            <option value = "H" name="faculty">H-Faculty of Engineering</option>
                            <option value = "I" name="faculty">I-Department Of Siddha Medicine</option>
                            <option value = "J" name="faculty">J-Allied Health Science Unit</option>
                            <option value = "K" name="faculty">K-Faculty of Technology</option>

                                                        
                         </select>
                    </tr>
                    
                    <tr>
                        <td><b>Record</b></td>
                        <td>
                            <input type="text" name="record" id="record" placeholder="Enter the time duration" >S</td>
                    </tr>
                    
                     
                    
                    <tr>
                        <td align="center">
                            <input type="submit" name="btnUpd" value="Place the Students " id="btnUpd"></td>
                        <td>
                        </td>
                    </tr>
                    
                </tbody>
            </table>

        </form>
        </div>
    </center>
        

    </body>
</html>