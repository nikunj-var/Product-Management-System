<%@ page import = "java.sql.*" %>
<html>
<body  onload = makeActive("delete")>
	<%	
		String pid = request.getParameter("id");
		
		PreparedStatement ps = (PreparedStatement)application.getAttribute("select");
		
		ps.setString(1,pid);
		
		ResultSet rst = ps.executeQuery();
		
		if(rst.next()){
			
			PreparedStatement ps1 = (PreparedStatement)application.getAttribute("delete");
		
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
