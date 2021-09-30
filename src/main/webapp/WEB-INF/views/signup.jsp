<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body  
{  
    margin: 0;  
    padding: 0;  
    background-color:white;  
    font-family: 'Arial';  
}  
.signup{  
        width: 382px;  
        overflow: hidden;  
        margin: auto;  
        margin: 20 0 0 450px;  
        padding: 80px;  
        background: #ff4d4d;  
        border-radius: 15px ;  
   
}   
h1{  
    text-align: center;  
    color: #277582;  
    padding: 20px;  
}  
label{  
    color:black;  
    font-size: 17px;  
}  
.uemail{  
    width: 200px;  
    height: 30px;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
.upass{  
    width: 200px;  
    height: 30px;    
    border-radius: 3px;  
    padding-left: 8px;  
}  
.uname
{
    width: 200px;  
    height: 30px;    
    border-radius: 3px;  
    padding-left: 8px;
}
.span{  
    color: black;  
    font-size: 17px;
    }
#footer {
   position:absolute;
   bottom:0;
   width:100%;
   height:30px;   /* Height of the footer */
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addUser" method="GET">   
<h1>Sign Up Form</h1>

<label class="label" for="Name"> Enter Name </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="uname" type="text" name="uname" required><br/><br> 

<label class="label" for="Email"> Enter Email </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="uemail" type="text" name="uemail" required><br/> <br>

<label class="label" for="Pswd"> Create Password </label>
<input  class="upass" type="password" name="upass" required ><br/><br>

<button class="span" type="submit">Register</button>  
</form> 
<footer id="footer" align="center">@Nagarro Software</footer>
</body>
</html>