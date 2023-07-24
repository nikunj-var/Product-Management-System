<%@include file = "navbar.jsp"%>
<html>
<body  onload = makeActive("list")>
	<%	
		Statement st = (Statement)application.getAttribute("st");
		ResultSet rst = st.executeQuery("select * from product_info");
		
	%>
	<div class="div">
		<h1>Product Details</h1>
	</div>
	<table class ="table tar" border="1" cellpadding="5px">
		<tr >
			<th>Product Id</th>
			<th>Name</th>
			<th>Brand</th>
			<th>Quantity</th>
			<th>Price</th>
			<th style="color:grey;">Action</th>
		</tr>
		<%
			while(rst.next()){
				String pid = rst.getString(1);
				%>
				<tr>
					<td><%=pid %></td>
					<td><%=rst.getString(2) %></td>
					<td><%=rst.getString(3) %></td>
					<td><%=rst.getString(4) %></td>
					<td><%=rst.getString(5) %></td>
					<td><a href="edit.jsp?pid=<%=pid%>">Edit |</a> 
					<!-- url rewriting -->
					<a href="delete.jsp?pid=<%= pid %>" onclick="return confirm('Are you sure to delete this record?')">Delete</a></td>
					 
				</tr>
				<% 
			}
		%>
	</table>
	
</body>
</html>
