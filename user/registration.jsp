<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Registration</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
       <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

               <jsp:include page="userHome.jsp"/>
               <link href="CSS/calender.css" rel="stylesheet" type="text/css"/>
              <script src="JS/calendarize.js" type="text/javascript"></script>
              
                  <script type="text/javascript">

        function formValidate(){

            var userid = document.forms["myForms"]["userid"].value;
            var username = document.forms["myForms"]["username"].value;
            var address = document.forms["myForms"]["address"].value;
            var password = document.forms["myForms"]["password"].value;
            var confirm = document.forms["myForms"]["confirm"].value;
            var phone = document.forms["myForms"]["phone"].value;
            var email = document.forms["myForms"]["email"].value;
            

            if(idValidation(userid, 5))
                 if(userValidation(username,5,10))
                     if(addressValidation(address))
                    if(passwordValidation(password, 5, 10))
                        if(confirmPassword(confirm, 5, 10))
                            if(equalPassword(password, confirm))
                               if(Phonenumber(phone, 10))
                                  if(emailValidation(email))
                                                return true;
                                            else
                                                return false;
                                        else
                                            return false;
                                    else
                                        return false;
                                else
                                    return false;
                            else
                                return false;
                        else
                            return false;
                    else
                        return false;
               else
                        return false;

        }


        function isEmpty(elemValue, field){
            if(elemValue ==""  || elemValue == null){
                alert("You cannot have " + field + " field empty");
                return true;
            }
            else
                return false;
        }


function idValidation(elemValue,num){
            var exp = /^[0-9a-zA-Z]+$/;

            if (!isEmpty(elemValue, "userid")) {
                if (elemValue.match(exp)) {
                    if (elemValue.length == num) {
                        return true;
                    }
                    else {
                        alert("Enter event ID including five characters");
                        return false;
                    }
                }
                else
                    {
                        alert("You can use numbers and letters only");
                        return false;
                    }
                }

                else
                    return false;
            }


function userValidation(elemValue,min,max){
            var exp = /^[0-9a-zA-Z]+$/;

            if (!isEmpty(elemValue, "username")) {
                if (elemValue.match(exp)) {
                    if (elemValue.length >= min && elemValue.length <= max) {
                        return true;
                    }
                    else {
                        alert("Enter a username in between " + min + " and " + max + " characters");
                        return false;
                    }
                }
                else
                    {
                        alert("You can use numbers and letters only");
                        return false;
                    }
                }

                else
                    return false;
            }


function addressValidation(elemValue){
            var exp = /^[0-9a-zA-Z]+$/;
            if(!isEmpty(elemValue, "Address"))
            {
                if(elemValue.match(exp))
                {
                    return true;
                }
                else
                {
                    alert("Enter only text for your  Address")
                }
            }
        }



function passwordValidation(elemValue,min,max){
            if(!isEmpty(elemValue, "password")){
                if(elemValue.length >= min && elemValue.length <= max){
                    return true;
                }
                else {
                    alert("Enter a password between " + min + " and " + max + " characters");
                    return false;
                }
            }
            else
                return false;
        }



function confirmPassword(elemValue,min,max){
            if(!isEmpty(elemValue, "Confirm Password")){
                if(elemValue.length >= min && elemValue.length <= max){
                    return true;
                }
                else {
                    alert("Enter a password between " + min + " and " + max + " characters");
                    return false;
                }
            }
            else
                return false;
        }


function equalPassword(password, confirm){
            if( password === confirm )
                return true;
            else{
                alert("Confirm Password is not match with Password,Please enter password again.");
                return false;
            }
        }


function contactNumber(elemValue){
            var exp = /^\d{10}$/;
            if(!isEmpty(elemValue, "phone")) {
                if(elemValue.match(exp)){
                    return true;
                }
                else {
                    alert("Enter a valid Contact Number");
                    return false;
                }
            }
            else
                return false;
        }


        function emailValidation(elemValue){
            if(!isEmpty(elemValue,"email")){
                var atpos = elemValue.indexOf("@");
                var dotpos = elemValue.indexOf(".");
                if(atpos < 1 || dotpos + 2 >= elemValue.length || atpos + 2 > dotpos){
                    alert("Enter a valid email address");
                    return false;
                }
                else
                    return true;
            }
            else
                return false;
        }
    </script>


    </head>
    <body>
        <div class="container">
		<div class="row">
                    <div class="col-md-8">
        
        <form action="register.jsp" method="POST">
             <div class="b">
                 <center>
                     <h1>Registration Form</h1>
            <table border="0">
                <tbody>
                    <tr>
                        <td>User ID</td>
                        <td><input type="text" name="userid" value="" size="50"  required="required" /></td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="username" size="50" required="required" /></td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>
                        <td>Address</td>
                        <td><input type="text" name="address" size="50" required="required" /></td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" size="50" required="required" /></td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                     <tr>
                        <td>Confirm Password</td>
                        <td><input type="password" name="confirm" size="50" required="required" /></td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>
                        <td>Phone Number</td>
                        <td><input type="text" name="phone" size="50" required="required" /></td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="text" name="email" size="50" required="required" /></td>
                    </tr>
                    <tr></tr>
                    <tr></tr>
                   
                </body>
            </table>

            <input type="submit" value="submit"> 
            </center>
             </div>
        </form>
                    </div>
                    
                    <div class="col-md-4">
				<div class="card mx-auto" style="width: 20em; height: 51em">
				  <img class="card-img-top mx-auto" style="width:60%" src="user.png" alt="Card image cap"/>
				  <div class="card-body">
				    <h5 class="card-title">User Information</h5>
				    <p class="card-text"><i class="fas fa-user">&nbsp;</i>M.G.Manamendra</p>
				    <p class="card-text"><i class="fa fa-user-cog">&nbsp;</i>Admin</p>
				    <a href="changepwd.html" class="btn btn-primary"><i class="fa fa-pencil-alt">&nbsp;</i>Change Password</a>
				    <a href="registration.html" class="btn btn-info"><i class="fa fa-user-plus">&nbsp;</i>Register</a>
				  
                                    <br><br><br><br>
                                 
                                    <img src="calender.png" alt="calender" style="width: 250px; height: 250px;margin-left: 15px;"/>
                                  
                                  
                                  </div> 
                                  
                                </div>
                    </div>
                </div>
        </div>
    </body>
</html>
