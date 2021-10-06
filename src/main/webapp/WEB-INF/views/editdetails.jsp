<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
h2{  
background-color:#33cccc;
    text-align: center;  
    color: black;  
    padding: 20px;  
}  
#footer {
color: #277582;
   position:absolute;
   bottom:0;
   width:100%;
   height:30px;   
}
.body  
{  
    margin: 0;  
    padding: 0;  
    background-color:white;  
    font-family: 'Arial';  
}  
   

.label{  

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

</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Edit Employee Details</h2>

<div>
<form action="updateemployee" method="get">
		<label class="label" for="Departure">Employee Code</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input class="input" "type="text" name="code" id="code" readonly><br><br>
		
	    <label class="label" for="Arrival">Employee Name</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input class="input" type="text" name="name" id="name" maxlength="100" required="required"><br><br>
	    
	    <label class="label" for="Date">Location</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input class="input" type="text" name="location" id="location" maxlength="500" ><br><br>
	    
	    <label class="label" for="flighttype">Email</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input class="input" type="text" name="email" id="email" maxlength="100" required="required"><br><br> 
	    
	    <label class="label" for="preference">Date Of Birth</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	    <input class="input" type="text" name="dob" id="dob" required="required"><br><br>

		<button class="span" type="submit" >Save</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<button class="span" type="reset" style="margin-left:20px">Cancel</button>
</form>
</div>		

<script>
var emp=${employee}
document.getElementById('code').value=emp.employeeCode;
document.getElementById('name').value=emp.employeeName;
document.getElementById('location').value=emp.location;
document.getElementById('email').value=emp.email;
document.getElementById('dob').value=emp.dob;
</script>
<footer id="footer" align="center">@Nagarro Software</footer>
</body>
</html>