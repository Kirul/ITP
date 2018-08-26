<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

<style>
html,body,h1,h2,h3,h4,h5 {font-family: "Open Sans", sans-serif}


	/* using normalize.css in settings */
		abbr {
		  border-bottom: 1px dashed #039;
		  cursor: help;
		}
		body {
		  background-color: #f0f0f0;
		  font: 1rem 'Open Sans',sans-serif;
		}
		.tbl {
		  background-color: white;
		  border-collapse: collapse;
		  margin: 2em auto;
		  table-layout: fixed;
		}
		.tbl caption {
		  font-weight: 700;
		  padding-bottom: 1em;
		  text-align: left;
		}
		.tbl th {
		  background-color: lightsteelblue;
		  font-weight: bold;
		  text-align: left;
		}
		.tbl td, .tbl th {
		  border: 1px solid black;
		  padding: 2px 4px;
		  vertical-align: top;
		}
		.tbl tbody tr:nth-child(odd):not(.highlight) {
		  background-color: #dde;
		}
		.tbl tbody tr:hover:not(.highlight) {
		  background-color: #b0b0b0;
		}
		.highlight {
		  /*background-color: rgba(255,255,153, .7);  light yellow */
		  background-color: red;
		  font-weight: bold;
		}

		#navigation,.navbar .navbar-default {
			background-image: url("imgs/kirul.png"); 
			
		}

</style>
<title>Student Participant Management</title>
</head>
<body class="w3-theme-l5">
	<!-- Navbar -->
	<div class="w3-top">
	 <nav class="navbar navbar-dark bg-light" style="padding:40px;" id="navigation" role="navigation">
	 	<a href="index2.jsp">LOGO</a>
	  		<a class="navbar-brand"></a>
		  	
		</nav>
	</div>
	
	<!-- Page Container -->
	<div class="w3-container w3-content" style="max-width:1400px;margin-top:150px">    
	  <!-- The Grid -->
	  <div class="w3-row">
	    <!-- Left Column -->
	    <div class="w3-col m3">
	      <!-- Profile -->
	      <div class="w3-card w3-round w3-white">
	        <div class="w3-container">
	         <h4 class="w3-center">My Profile</h4>
	         <p class="w3-center"><img src="imgs/avatar.jpg" class="w3-circle" style="height:106px;width:106px" alt="Avatar"></p>
	         <hr>
	         <p><i class="fa fa-pencil fa-fw w3-margin-right w3-text-theme"></i> Call Room Judge</p>
	         
	        </div>
	      </div>
	      <br>
	      
	      <!-- Alert Box -->
	      <div class="w3-container w3-display-container w3-round w3-theme-l4 w3-border w3-theme-border w3-margin-bottom w3-hide-small">
	        <span onclick="this.parentElement.style.display='none'" class="w3-button w3-theme-l3 w3-display-topright">
	          <i class="fa fa-remove"></i>
	        </span>
	        <p><strong>Hey!</strong></p>
	        <p> Welcome to the Student Management page. You're logged as the call room judge </p>
	      </div>
	    
	    <!-- End Left Column -->
	    </div>
	    
	    <!-- Middle Column -->
	    <div class="w3-col m8">
	    
	      <div class="w3-row-padding">
	        <div class="w3-col m12">
	          <div class="w3-card w3-round w3-white">
	            <div class="w3-container w3-padding">
	              <div class="w3-container"></div>
	
	  <h1 style="text-align:center">Student Participants List</h1>	    	    
	    <div class="col-sm-12" style="padding:5px;" >
	<form class="form-inline">
		    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
		    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	  	</form>
	</div> 
  
  <%@ page import="java.sql.*" %>
	<table class="tbl">
  <thead>
    <tr>
      <th style="width:160px">StudentID</th>
      <th style="width:160px">SportsID</th>
      <th style="width:160px">Name</th>
      <th style="width:58px">100m</th>
      <th style="width:58px">200m</th>
      <th style="width:58px">High Jump</th>
      <th style="width:58px">Long Jump</th>
      <th style="width:58px">8000m</th>
    </tr>
  </thead>
 <%
  try{
	  
	
          
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sportsms","root","");
     
    
   
    
    Statement st =  con.createStatement();
    String sql = "Select * from participant";
    ResultSet rs = st.executeQuery(sql);
    
    while(rs.next()){

%>
  <tbody>
    <tr>
      <td><%=rs.getString("StudentID") %> </td>
      <td><%=rs.getString("SportsID") %> </td>
      <td><%=rs.getString("PartName") %> </td>
      <td><%=rs.getString("Hundred") %> </td>
      <td><%=rs.getString("Twoh") %> </td>
      <td><%=rs.getString("Highj") %> </td>
      <td><%=rs.getString("Longj") %> </td>
      <td><%=rs.getString("Eight") %> </td>
    </tr>
    
  </tbody>
  <%
    }
    con.close();
  }
    catch(Exception e){
    	System.out.println("error2");
    	
    }
  

%>
</table>
<button type="button" id="insertButton" class="btn btn-outline-primary my-2 my-sm-0 w3-right" >Update Student</button>
<button type="button" id="insertButton" class="btn btn-outline-primary my-2 my-sm-0 w3-right" onclick="document.getElementById('id01').style.display='block'" >Add New Student</button>


		 <div id="id01" class="w3-modal">
    <div class="w3-modal-content w3-card-4 w3-animate-zoom" style="max-width:600px">

      <div class="w3-center"><br>
        <span onclick="document.getElementById('id01').style.display='none'" class="w3-button w3-xlarge w3-hover-red w3-display-topright" title="Close Modal">&times;</span>
       	<form action="ParticipantSInsert" method="post">
			<table>
				<tr>
					<td>Student ID :</td>
					<td><input type="text" name="StudentID"></td>
				</tr>
				<tr>
					<td>Sports ID :</td>
					<td><input type="text" name="SportsID"></td>
				</tr>
				<tr>
					<td>Participant Name :</td>
					<td><input type="text" name="PartName"></td>
				</tr>
				<tr>
					<td>100m :</td>
					<td><input type="text" name="Hundred"></td>
				</tr>
				<tr>
					<td>200m :</td>
					<td><input type="text" name="Twoh"></td>
				</tr>
				<tr>
					<td>High Jump :</td>
					<td><input type="text" name="Highj"></td>
				</tr>
				<tr>
					<td>Long Jump :</td>
					<td><input type="text" name="Longj"></td>
				</tr>
				<tr>
					<td>800m :</td>
					<td><input type="text" name="Eight"></td>
				</tr>
				<br>
				<tr>
					<td><input type="reset" name="reset"></td>
					<td><input type="submit" name="submit" value="Insert"></td>
				</tr>
			</table>
		</form>
      </div>
      <div class="w3-container w3-border-top w3-padding-16 w3-light-grey">
      	<button class="btn btn-outline-success my-2 my-sm-0 "></button>
      	
        <button onclick="document.getElementById('id01').style.display='none'" type="button" class="btn btn-outline-danger my-2 my-sm-0 w3-right">Cancel</button>
       
      </div>

    </div>
  </div>


	</div>
            </div>
          </div>
        </div>
      </div> 
      
    
    <!-- End Middle Column -->
    </div>

	<!-- <div style="padding:50px">	
		<h1 align="center">Student Participant Management</h1>
	
		
	</div> -->
	
	<script type="text/javascript">
/*jshint esversion: 6 */
function selRow(e) {
  'use strict';
  let el = e.target, parent;
  // Traverse parent in case el is not TD.
  while (el) {
    parent = el.parentElement;
    if (parent && parent.tagName == "TR") {
      parent.classList.toggle('highlight');
      break;
    }
    el = parent;
  }
  e.stopPropagation(); // not really necessary.
}

(function (doc) {
  'use strict';
  doc.addEventListener('DOMContentLoaded',
    function () {
      let tbody = doc.querySelector('.tbl>tbody');
      if (tbody) {
        tbody.addEventListener('click',
                               selRow, false);
      }
    }
  );
})(document);
	
	</script>
</body>
</html>