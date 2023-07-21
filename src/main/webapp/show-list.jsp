<%@include file = "navbar.jsp"%>
<%@include file = "connection.jsp"%>
<html>
<body  onload = makeActive("list")>
	<%	
		Statement st = cn.createStatement();
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
		</tr>
		<%
			while(rst.next()){
				%>
				<tr>
					<td><%=rst.getString(1) %></td>
					<td><%=rst.getString(2) %></td>
					<td><%=rst.getString(3) %></td>
					<td><%=rst.getString(4) %></td>
					<td><%=rst.getString(5) %></td>
				</tr>
				<% 
			}
		%>
	</table>
	
</body>
</html>
