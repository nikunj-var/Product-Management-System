<%@ page import = "java.sql.*" %>

<html>
<body  onload = makeActive("save")>
	<%
	
		String pid = request.getParameter("id");
		
		PreparedStatement ps1= (PreparedStatement)application.getAttribute("select"); 
		
		ps1.setString(1, pid);
		
		ResultSet rst = ps1.executeQuery();
		
		if(rst.next())
		{
			%>
			<div class="div">
				<h1>Product with id <%=pid %> already exists</h1>
			</div>
			<jsp:include page="insert.jsp"/>
			<% 
			return;
		}
		
		String pname = request.getParameter("name");
		String pbrand = request.getParameter("brand");
		String pquantity = request.getParameter("quantity");
		String pprice = request.getParameter("price");
		
		PreparedStatement ps= (PreparedStatement)application.getAttribute("save"); 
	
		ps.setString(1,pid);
		ps.setString(2,pname);
		ps.setString(3,pbrand);
		ps.setString(4,pquantity);
		ps.setString(5,pprice);
		
	
		ps.executeUpdate(); 
		%>
	<%@include file = "navbar.jsp"%>
	<div class="div">
		<h1>Product record has been saved successfully</h1>
	</div>
</body>
</html>
