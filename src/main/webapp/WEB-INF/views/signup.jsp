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
h2{  
background-color:#33cccc;
    text-align: center;  
    color: black;  
    padding: 20px;  
}  
label{  
    
    margin-left:20px;
    color:black;  
    font-size: 17px;  
}  
.input{  
    width: 200px;  
    height: 30px;  
    border-radius: 3px;  
    padding-left: 8px;  
}  

.span{ 
background-color:#d9d9d9; 
margin-left:20px;
    color: black;  
    font-size: 17px;
    }
#footer {
color: #277582;
   position:absolute;
   bottom:0;
   width:100%;
   height:30px;  
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addUser" method="GET">   
<h2>Sign Up Form</h2>

<label class="label" for="Name"> Enter Name </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input  class="input" type="text" name="uname" required><br/><br> 

<label class="label" for="Email"> Enter Email </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input class="input" type="text" name="uemail" required><br/> <br>

<label class="label" for="Pswd"> Create Password </label>
<input  class="input" type="password" name="upass" required ><br/><br>

<button class="span" type="submit">Register</button>  
</form> 
<footer id="footer" align="center">@Nagarro Software</footer>
</body>
</html>