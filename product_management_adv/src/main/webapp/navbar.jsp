<%@ page import = "java.sql.*" %>
<html>
	<head>
		<link rel='stylesheet' href='CSS/style.css'>
		<script src = "JS/script.js"></script>
	</head>
	<body>
		<div class='div'>
			<hr style='border:2px solid teal;'>
			<table style='margin:auto; width:80%;' class='table'>
				<tr>
					<td><a id="home"  href= '/product_management' class='btr'>Home</a></td>
					<td><a id="save"  href= 'insert.jsp' class='btr'>Insert Record</a></td>
					<td><a  id="list" href= 'show-list.jsp' class='btr'>Show List</a></td>
					<td><a  id="delete" href= 'delete-record.jsp' class='btr'>Delete Record</a></td>
					<td><a  id="edit" href= 'edit-record.jsp' class='btr'>Edit Record</a></td>
					<td><a  id="search" href= 'search.jsp' class='btr'>Search Record</a></td>
				</tr>
			</table>
			<hr style='border:2px solid teal;'>
		</div>
		
	</body>
</html>