
<%@include file = "connection.jsp"%>
<html>
<body  onload = makeActive("search")>
	<%	
		String pid = request.getParameter("id");	
		String query = "select * from product_info where pid=?";
		PreparedStatement ps = cn.prepareStatement(query);
		ps.setString(1,pid);
		
		ResultSet rst = ps.executeQuery();
		if(rst.next()){
			%>
			<%@include file = "navbar.jsp"%>
			<table class='table' border='1' style="border-collapse:collapse;">
			<tr >
				<td class='tabledata'>Product id : </td>
				<td class='tabledata'>				
					<label><%=rst.getString(1) %></label>
				</td>
			</tr>
			<tr >
				<td class='tabledata'>Product name : </td>
				<td class='tabledata'><label><%=rst.getString(2) %></label></td>
			</tr>
			<tr >
				<td class='tabledata'>Product brand : </td>
				<td class='tabledata'><label><%=rst.getString(3) %></label></td>
			</tr>
			<tr >
				<td class='tabledata'>Product quantity : </td>
				<td class='tabledata'><label><%=rst.getString(4) %></label></td>
			</tr>
			<tr >
				<td class='tabledata'>Product price : </td>
				<td class='tabledata'><label><%=rst.getString(5) %></label></td>
				</td>
			</tr>
			<tr>
					<td colspan = '2' align='right'>
					<a href='search.jsp'> <button class='button'" type="submit">Back</button></a> 
				</td>

			</tr>
			
		</table>
			<% 
		}
		else{
			%>
			<div class="div">
			<h4>Product record with id <%=pid %> does not exist</h4>
			</div>
			
			<jsp:include page="search.jsp"/>
			<% 

		}
	%>
	
</body>
</html>
