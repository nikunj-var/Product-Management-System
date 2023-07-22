
<%@include file = "connection.jsp"%>
<html>
<body  onload = makeActive("save")>
	<%
	
		String pid = request.getParameter("pid");
		String query1 = "delete from product_info where pid = ?";
		
		PreparedStatement ps1 = cn.prepareStatement(query1);
	
		ps1.setString(1, pid);
		
		ps1.executeUpdate();
		
	%>
	<div class="div">
	<jsp:include page="show-list.jsp"/>
		<h1>Product record with id <%=pid %> has been deleted successfully</h1>
		
	</div>
	<%-- <% 
		response.sendRedirect("show-list.jsp");
		% --%>>

	
</body>
</html>
