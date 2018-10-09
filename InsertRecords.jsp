

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String insertedname = request.getParameter("name");
    String insertedfaculty = request.getParameter("faculty");
    String insertedevent = request.getParameter("event");
    String insertedperformance = request.getParameter("performance");
    String insertedpoints = request.getParameter("points");
    String inserteddate = request.getParameter("date");

    
    String url = "jdbc:mysql://localhost/university";
    String user = "root";
    String pass = "";
    try{
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection(url,user,pass);
        Statement st = con.createStatement();
        
        int i = st.executeUpdate("INSERT INTO records(name,faculty,event,performance,points,date)VALUES('"+insertedname+"','"+insertedfaculty+"','"+insertedevent+"','"+insertedperformance+"','"+insertedpoints+"','"+inserteddate+"')");
        out.println("Data Is Successfully Inserted !");
    }catch(Exception e){
        System.out.println(e);
        e.printStackTrace();
    }
%>

<%
    
    
     String name = request.getParameter("name");
    session.setAttribute("name",name);
    
     String faculty = request.getParameter("faculty");
    session.setAttribute("faculty",faculty);
    
     String event = request.getParameter("event");
    session.setAttribute("event",event);
    
     String performance = request.getParameter("performance");
    session.setAttribute("performance",performance);
    
     String points = request.getParameter("points");
    session.setAttribute("points",points);
    
    
    String date = request.getParameter("date");
    session.setAttribute("date",date);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Records</title>
        <script>
           
function formValidation(){
    var destination = document.forms["insertForm"]["destination"].values;
    var charge = document.forms["insertForm"]["charge"].values;
    
    if(isAlphaNumeric(destination))
        if(isNumeric(charge))
            return true;
        else
            return false;
    else 
        return false;
}

function isEmpty(elemValue,field){
    if(elemValue == "" || elemValue == null){
        alert("You cannot have "+field+" field empty!");
        return true;
    }
    else
        return false;
}

function isAlphaNumeric(elemValue){
    var exp = /^[A-Za-z0-9]+$/;
    if(!isEmpty(elemValue,"Destination")){
        if(elemValue.match(exp)){
            return true;
        }
        else{
            alert("Enter only text for the Destination field!");
            return false;
        }
    }
    else
        return false;
}

function isNumeric(elemValue){
    if(!isEmpty(elemValue,"Charge")){
        var exp = /^[0-9.0-9]+$/;
        if(elemValue.match(exp)){
            return true;
        }
        else{
            alert("Enter the charge correctly!");
            return false;
        }
    }
    else
        return false;
}

    

        </script>
        <link type="text/css" rel="stylesheet" href="Admin css.css">
    </head>
    <body>
        
       
    <center>
        <h1>INSERT RECORDS</h1>
        <form method="post" name="insertForm" action="InsertRecords.jsp" onsubmit="formValidation()">
            Name : <input type="text" name="name" required="required">
            <br><br><br>
            Faculty      : <input type="text" name="faculty" required="required">
            <br><br><br>
            Event : <input type="text" name="event" required="required">
            <br><br><br>
            Performance : <input type="text" name="performance" required="required">
            <br><br><br>
            Points : <input type="text" name="points" required="required">
            <br><br><br>
            Date : <input type="date" name="date" required="required">
            <br><br><br>
            <input type="submit" name="Insert">
            <input type="reset"  name="Reset">            
            <br><br><br>
            <button><a href="Records.jsp">View Records</a></button>
        </form>
        <br><br>
       
    </center>
    </body>
</html>