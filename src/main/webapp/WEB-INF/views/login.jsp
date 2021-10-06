<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
.login{  
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
    width: 300px;  
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
.label{  
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h2>HR Manager Login</h2>
		<form action="login" method="GET">

			<label class="label" for="Email"> Enter Email </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input class="input" type="text" name="uemail"  required><br><br> 
			<label class="label" for="Pswd">Enter Password </label> 
			<input class="input" type="password" name="upass"  required><br><br>
			
			<button class="span" type="submit">Login</button>
			<p style=" margin-left:20px;">New user:<a href="signup">Signup</a>
		</form>
		<footer id="footer" align="center">@Nagarro Software</footer>
    </body>
</html>
