<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<style>
h2 {
background-color:#33cccc;
	text-align: center;
	color: black;
	padding: 10px;
}

#footer {
	color: #277582;
	position: Fixed;
	bottom: 0;
	width: 100%;
	height: 30px;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	<h2 class="header" align="center">Hr Manager Login</h2>
	
	<a href="/Manager" ><button style=" margin-left: 1190px;position: fixed;background-color:#d9d9d9">Logout</button></a>
	<p style="margin-left:20px;"><strong>Employee Listing</strong></p>
	</div>


	<div>
		
			<br> <a href="uploaddetails" ><button style="margin-left: 850px; position: fixed;background-color:#d9d9d9;">Upload
					Employee Details</button></a>
			<button style="margin-left:1070px;position: fixed;background-color:#d9d9d9;"
				onclick="downloadcsvfile()">Download Employee Details</button>
			<br><br>
		<table border="1" align="center" style="width: 99%; position:fixed;background-color: #ffffe6">
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
	<script>
		var currenturl = window.location.href.split("/");
		console.log(currenturl);
		/* 	location.replace("welcome");
		 */
		var str = ${employee};
		buildTable(str);
		function buildTable(data) {
			var table = document.getElementById('mytable');
			for (let i = 0; i < str.length; i++) {
				var row1 = '<tr><td>' + data[i].employeeCode + '</td>';
				var row2 = '<td>' + data[i].employeeName + '</td>';
				var row3 = '<td>' + data[i].location + '</td>';
				var row4 = '<td>' + data[i].email + '</td>';
				var row5 = '<td>' + data[i].dob + '</td>';
				var row6 = '<td>'
						+ '<a href="editemployee/'+data[i].employeeCode+'">Edit</a>'
						+ '</td></tr>';
				table.innerHTML += row1 + row2 + row3 + row4 + row5 + row6;
			}
		}

		function downloadcsvfile() {
			var csv = 'employeeCode,employeeName,location,email,dob\n';
			str.forEach(function(row) {
				csv += row.employeeCode + ',' + row.employeeName + ','
						+ row.location + ',' + row.email + ',' + row.dob;
				csv += "\n";
			});
			var hiddenElement = document.createElement('a');
			hiddenElement.href = 'data:text/csv;charset=utf-8,'
					+ encodeURI(csv);
			hiddenElement.target = '_blank';

			//provide the name for the CSV file to be downloaded  
			hiddenElement.download = 'employeeData.csv';
			hiddenElement.click();

		}
	</script>
</body>
</html>