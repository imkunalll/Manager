<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<header>Header goes Here</header>	
<div>Edit Employee Details
<form action=""></form>
		<label class="label" for="Departure">Employee Code</label> 
		<input class="input" "type="text" name="code" required="required"><br><br>
		
	    <label class="label" for="Arrival">Employee Name</label>
	    <input class="input" type="text" name="name" maxlength="100" required="required"><br><br>
	    
	    <label class="label" for="Date">Location</label>
	    <input class="input" type="textarea" name="location" maxlength="500" ><br><br>
	    
	    <label class="label" for="flighttype">Email</label> 
	    <input class="input" type="text" name="email" maxlength="100" required="required"><br><br> 
	    
	    <label class="label" for="preference">Date Of Birth</label> 
	    <input class="input" type="text" name="dob"  required="required"><br><br>

		<button class="span" type="submit" >Save</button>
		<button type="reset">Cancel</button>
</form>
</div>		
<footer>Footer Goes Here</footer>
</body>
</html>