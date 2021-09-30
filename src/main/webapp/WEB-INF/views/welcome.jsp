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

</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h2 class="header" align="center">Hr Manager Login</h2>
	
	<div>
		<p ><strong>Employee Listing</strong><p><br>
		<a href="infopage"><button style="float: right;">Upload Employee Details</button></a>
		<button style="float: right;">Download Employee Details</button>
		<table border="1" align="center" style="width: 100%">
			<tr>
				<th>Employee Code</th>
				<th>Employee Name</th>
				<th>Location</th>
				<th>Email</th>
				<th>Date Of Birth</th>
				<th>Action</th>
			</tr>
			<tbody id="mytable">
			
			</tbody>
		</table>
	</div>
	<footer id="footer" align="center">@Nagarro Software</footer>
	<script >
		var str = ${employee};
		buildTable(str);
		function buildTable(data)
		{
			var table=document.getElementById('mytable');
			for(let i=0;i<str.length;i++)
				{
var row='<tr><td>'+data[i].employeeCode+'</td><td>'+data[i].employeeName+'</td> <td>'+data[i].location+'</td><td>'+data[i].email+'</td> <td>'+data[i].dob+'</td> </tr>'
	table.innerHTML += row;
				}
		} 
	</script>
</body>
</html>