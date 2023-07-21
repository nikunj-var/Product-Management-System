<%@include file = "navbar.jsp"%>
<%@include file = "connection.jsp"%>
<html>
<body  onload = makeActive("save")>
	<%
	
		 String pid = request.getParameter("id");
		String pname = request.getParameter("name");
		String pbrand = request.getParameter("brand");
		String pquantity = request.getParameter("quantity");
		String pprice = request.getParameter("price");
		
		String query = "insert into product_info values(?,?,?,?,?)";
		
	
		PreparedStatement ps = cn.prepareStatement(query);
		
	
		ps.setString(1,pid);
		ps.setString(2,pname);
		ps.setString(3,pbrand);
		ps.setString(4,pquantity);
		ps.setString(5,pprice);
		
	
		ps.executeUpdate(); 
		%>
	
	<div class="div">
		<h1>Product record has been saved successfully</h1>
	</div>
</body>
</html>
