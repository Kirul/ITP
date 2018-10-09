<!DOCTYPE html>
<html>
       <head>
<title>Select Sportsmeet</title>
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


a.n{
	color:white;
	background-color:blue;
	text-decoration:none;
}


/* Create two columns/boxes that floats next to each other */
nav {
    float: left;
    width: 30%;
    height: 750px; /* only for demonstration, should be removed */
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
    height: 750px; /* only for demonstration, should be removed */
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

#gender{
    height:500px;
    width:250px;
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
                        
			<li><input type="text" value="Recorder"></li>
			
                       
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
  
  <br><br><br>
  <table>
  
                    <tr>
                        <td colspan="2"><h1 align="center">Annual Sportsmeet</h1></td>
                        <td colspan="2"><h1 align="center">Freshers' Sportsmeet</h1></td>
                     </tr>
                   
                        <tr>
                            <td><a href="PlaceTheStudentsAM.jsp"><img src="pictures/male_1.PNG" alt="" id="gender"></a></td>
                            <td><a href="PlaceTheStudentsAF.jsp"><img src="pictures/female.PNG" alt="" id="gender"></a></td>
                            <td><a href="PlaceTheStudentsFM.jsp"><img src="pictures/male_1.PNG" alt="" id="gender"></a></td>
                            <td><a href="PlaceTheStudentsFF.jsp"><img src="pictures/female.PNG" alt="" id="gender"></a></td>
                        </tr>
                        <tr>
                            <td><center><h3>Male Events</h3></center></td>
                            <td><center><h3>Female Events</h3></center></td>
                             <td><center><h3>Male Events</h3></center></td>
                            <td><center><h3>Female Events</h3></center></td>
                        </tr>
                    
                    </center>
                   
                    </table>
  
  
	
</article>
</section>



</body>
</html>
