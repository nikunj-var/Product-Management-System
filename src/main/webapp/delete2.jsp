
<%@include file = "connection.jsp"%>
<html>
<body  onload = makeActive("delete")>
	<%	
		String pid = request.getParameter("id");
		
		String query = "select * from product_info where pid=?";
		
		PreparedStatement ps = cn.prepareStatement(query);
		ps.setString(1,pid);
		
		ResultSet rst = ps.executeQuery();
		
		if(rst.next()){
			String query1 = "delete from product_info where pid = ?";
			
			PreparedStatement ps1 = cn.prepareStatement(query1);
		
			ps1.setString(1, pid);
			
			ps1.executeUpdate();
			%>
			<div class="div">
			<h4>Product record with id <%=pid %> has been deleted successfully</h4>
		
			</div>
			<% 
		}
		else{
			%>
			<div class="div">
			<h4>Product record with id <%=pid %> does not exist</h4>
			</div>
			<% 
		}
	%>
	<jsp:include page="delete-record.jsp"/>
</body>
</html>
