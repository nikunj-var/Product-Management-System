<%@ include file = "navbar.jsp"%>
<html>
	<body onload = makeActive("edit")>
	<form action = "edit2.jsp" method = "post">
		<table class='table'>
			<tr >
				<td class='tabledata'>Enter product id</td>
				<td class='tabledata'>
					<input type="text" class="textbox" id = "id" name="id" onblur=checkvalue(this)><br>
					<span id="spanid"></span>
				</td>
			</tr>
			
			<tr>
				<td colspan = '2' align='right'>
					<button class='button'" type="submit">Edit</button>
				</td>
			</tr>
		</table>
	</form>
		
	</body>
</html>