<!DOCTYPE html>
<html>
       <head>
<title>Prize List Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {
    box-sizing: border-box;
}

body {
    font-family: Arial, Helvetica, sans-serif;
}

/* Style the header */
header {
    background-color: #666;
    padding: 30px;
    text-align: center;
    font-size: 35px;
    color: white;
}

a.n{
	color:white;
	background-color:blue;
	text-decoration:none;
}


/* Create two columns/boxes that floats next to each other */
nav {
    float: left;
    width: 30%;
    height: 1000px; /* only for demonstration, should be removed */
    background:white;
    padding: 20px;
}

/* Style the list inside the menu */
nav ul {
    list-style-type: none;
    padding: 0;
}

article {
    float: left;
    padding: 20px;
    width: 70%;
    background-color: #DEDEDE;
    height: 1000px; /* only for demonstration, should be removed */
}

/* Clear floats after the columns */
section:after {
    content: "";
    display: table;
    clear: both;
	
}
.icon{
	background-color:white;
	height:300px;
}


/* Style the footer */
footer {
    background-color: #777;
    padding: 10px;
    text-align: center;
    color: white;
}

/* Responsive layout - makes the two columns/boxes stack on top of each other instead of next to each other, on small screens */
@media (max-width: 600px) {
    nav, article {
        width: 100%;
        height: auto;
    }
}
</style>
</head>
<body>


<header>
    <img src="pictures/mainHeader.png" width="100%" height="20%">
</header>


<section>
 
  <nav>
	<div align="center">
  
		<ul>
			
                    <li><img src="pictures/humanicon2.jpg" height="80%" width="80%"></li>
			<li><h3>User Information</h3></li>
                        <br>
			<li><input type="text" value="Janadi"></li>
                        
			<li><input type="text" value="Event Presentation Manager"></li>
			
                       
                        <br>
			<li> <a class="n" href=""> Edit Profile</a>
                            
		             <a class="n" href="">Register</a> 
		    </li>
		</ul>
	</div>
	  
	  <br><br>
	<div align="center">'
		<ul>
			<li><a href="schedule.html">
                        <img src="pictures/calendar1.jpg" height="30%" width="50%"></a></li>
		</ul>
	 </div>
	
  </nav>
  
  
  
  
  <article>
       <h1 align="center">Prize List</h1>

  <br><br><br>
  
  <table align="center">
  <tr>
    
	
	
	<td align="center">
	<div class="icon">
	<br><br>
	<a href="DistributionOfAwards.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Best Performance</h4>
	</div>
	</td>
	
	
	<td align="center">
	<div class="icon">
	<br><br>
	<a href="RelayChampionOverall.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Relay Champion Overall</h4>
	</div>
	</td>
        
       
	<td align="center">
	<div class="icon">
	<br><br>
	<a href="RecordHolders.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Record Holders</h4>
	</div>
	</td>
	
  </tr>
	
		
	<tr>
    
	<td align="center">
	<div class="icon">
	<br><br>
	<a href="OutstandingAthleteOfTheMeet.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Outstanding Athlete</h4>
	</div>
	</td>
	
        
        <td align="center">
	<div class="icon">
	<br><br>
	<a href="Points.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Points</h4>
	</div>
	</td>
        
        
        <td align="center">
	<div class="icon">
	<br><br>
	<a href="Places.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Places</h4>
	</div>
	</td>
	
	</tr>
	
        
        
        <tr>
    
	<td align="center">
	<div class="icon">
	<br><br>
	<a href="OverallSecondRU.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Overall 2nd Runner Up</h4>
	</div>
	</td>
	
        
        <td align="center">
	<div class="icon">
	<br><br>
	<a href="OverallFirstRU.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Overall 1st Runner Up</h4>
	</div>
	</td>
        
        
        <td align="center">
	<div class="icon">
	<br><br>
	<a href="OverallChampion.jsp">
	<img src="pictures/tdicon2.jpg" height="70%" width="80%"></a>
	<br>
    <h4>Overall Champion</h4>
	</div>
	</td>
	
	</tr>
	
</article>
</section>



</body>
</html>
