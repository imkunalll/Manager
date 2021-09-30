<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
#footer {
   position:absolute;
   bottom:0;
   width:100%;
   height:30px;   /* Height of the footer */
}
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

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2 class="header" align="center">Hr Manager Login</h2>
<form action="uploademployee">
<p><strong>Enter Employee Details Here :</strong></p>
<br>
        <label class="label" for="code"> Enter the Employee Code:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input class="input" "type="text" name="ecode" id=" "><br><br>
		
		
	    <label class="label" for="name"> Enter the Employee Name:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input class="input" type="text" name="ename" ><br><br>
	    
	    <label class="label" for="location"> Enter the Employee Location:</label>&nbsp;&nbsp;&nbsp;&nbsp;
	    <input class="input" type="textarea" name="elocation"><br><br>
	    
	    <label class="label" for="email"> Enter the Employee Email:</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input class="input" type="text" name="eemail" ><br><br> 
	    
	    <label class="label" for="dob"> Enter the Employee DOB:</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input class="input" type="text" name="edob" ><br><br>
	    
	    <button class="span" type="submit">Save</button>

</form>
<footer id="footer" align="center">@Nagarro Software</footer>
</body>
</html>