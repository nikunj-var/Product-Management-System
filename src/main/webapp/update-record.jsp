
<%@include file = "connection.jsp"%>
<html>
<body  onload = makeActive("list")>
	<%
	
		String pid = request.getParameter("id");
		String pname = request.getParameter("name");
		String pbrand = request.getParameter("brand");
		String pquantity = request.getParameter("quantity");
		String pprice = request.getParameter("price");
		
		String query = "update product_info set name=?,brand=?,quantity=?,price=? where pid=?";

		PreparedStatement ps = cn.prepareStatement(query);

		ps.setString(1,pname);
		ps.setString(2,pbrand);
		ps.setString(3,pquantity);
		ps.setString(4,pprice);
		ps.setString(5, pid);
	
		ps.executeUpdate(); 
		response.sendRedirect("show-list.jsp");
		%>

</body>
</html>
