<%@ include file = "navbar.jsp"%>

<%@include file = "connection.jsp"%>

<html>
	<body onload = makeActive("search")>
	<form action = "search-record.jsp" method = "post">
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
					<button class='button'" type="submit">Search</button>
				</td>
			</tr>
		</table>
	</form>
		
	</body>
</html>