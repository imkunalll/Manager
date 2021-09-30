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
    width: 300px;  
    height: 30px;   
    border-radius: 3px;  
    padding-left: 8px;  
}  
.upass{  
    width: 300px;  
    height: 30px;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
.span{  
    color: black;  
    font-size: 17px;  
}  
.label{  
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>HR Manager Login</h1>
		<form action="login" method="GET">

			<label class="label" for="Email"> Enter Email </label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input class="uemail" type="text" name="uemail"  required><br><br> 
			<label class="label" for="Pswd">Enter Password </label> 
			<input class="upass" type="password" name="upass"  required><br><br>
			
			<button class="span" type="submit">Login</button>
			<p>New user:<a href="signup">signup</a>
		</form>
		<footer id="footer" align="center">@Nagarro Software</footer>
    </body>
</html>
