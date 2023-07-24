<%@ page import = "java.sql.*" %>

<html>
<body  onload = makeActive("save")>
	<%
	
		String pid = request.getParameter("pid");
		
		PreparedStatement ps1 = (PreparedStatement)application.getAttribute("delete");
	
		ps1.setString(1, pid);
		
		ps1.executeUpdate();
		response.sendRedirect("show-list.jsp");
		
	%>
	
</body>
</html>
