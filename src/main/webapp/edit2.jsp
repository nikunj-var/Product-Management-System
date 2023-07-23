
<%@include file = "connection.jsp"%>
<%@include file = "navbar.jsp"%>
<html>
<body  onload = makeActive("edit")>
	<%	

		String[] str = {
				"Logitech","Dell","Apple","Samsung","Microsoft","Mi"
		};
		
		String pid = request.getParameter("id");
		
		String query = "select * from product_info where pid=?";
		
		PreparedStatement ps = cn.prepareStatement(query);
		ps.setString(1,pid);
		
		ResultSet rst = ps.executeQuery();
		
		if(rst.next()){
			
			%>
			<form action = "update-record2.jsp" method = "post">
			<table class='table'>
			<tr >
				<td class='tabledata'>Product id</td>
				<td class='tabledata'>
					
					<label><%=rst.getString(1) %></label>
					<input type="hidden" value="<%=rst.getString(1) %>" name="id">

				</td>
			</tr>
			<tr >
				<td class='tabledata'>Edit product name</td>
				<td class='tabledata'><input type="text" class="textbox" id = "name" name="name" value="<%=rst.getString(2) %>" onblur=checkvalue(this)><br>

			</tr>
			<tr >
				<td class='tabledata'>Enter product brand</td>
				<td class='tabledata'>
					<select class='textbox' name='brand' id = "brand">
						<%
							String dbrand = rst.getString(3);
							for(String brand : str){
								if(dbrand.equals(brand)){
									%>
									<!-- iski wjh se option sbse upr aa jayega -->
									<option selected><%=brand %></option>
									<%
								}
								else{
									%>
									<option><%=brand %></option>
									<% 
								}
							}
						%>
					</select>
				</td>
			</tr>
			<tr >
				<td class='tabledata'>Edit product quantity</td>
				<td class='tabledata'><input type="text" class="textbox" name="quantity" value="<%=rst.getString(4) %>" id = "quantity" onblur=checkvalue(this)><br>

			</tr>
			<tr >
				<td class='tabledata'>Edit product price</td>
				<td class='tabledata'><input type="text" class="textbox" id = "price" value="<%=rst.getString(5) %>"  name="price" onblur=checkvalue(this)><br>

			</tr>
			<tr>
				<td colspan = '2' align='right'>
					<button class='button' onclick="return validateInput()" type="submit">Update Record</button>
				</td>
			</tr>
		</table>
	</form>
		
	</body>
</html>
			
			
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
</body>
</html>
