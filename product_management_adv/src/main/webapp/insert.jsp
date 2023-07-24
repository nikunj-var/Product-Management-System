<%@ include file = "navbar.jsp"%>
<html>
	<body onload = makeActive("save")>
	<form action = "save-record.jsp" method = "post">
		<table class='table'>
			<tr >
				<td class='tabledata'>Enter product id</td>
				<td class='tabledata'>
					<input type="text" class="textbox" id = "id" name="id" onblur=checkvalue(this)><br>
					<span id="spanid"></span>
				</td>
			</tr>
			<tr >
				<td class='tabledata'>Enter product name</td>
				<td class='tabledata'><input type="text" class="textbox" id = "name" name="name" onblur=checkvalue(this)><br>
					<span id="spanname"></span></td>
			</tr>
			<tr >
				<td class='tabledata'>Enter product brand</td>
				<td class='tabledata'>
					<select class='textbox' name='brand' id = "brand">
						<option>Logitech</option>
						<option>Dell</option>
						<option>Apple</option>
						<option>Samsung</option>
						<option>Micromax</option>
						<option>Mi</option>
					</select>
				</td>
			</tr>
			<tr >
				<td class='tabledata'>Enter product quantity</td>
				<td class='tabledata'><input type="text" class="textbox" name="quantity" id = "quantity" onblur=checkvalue(this)><br>
					<span id="spanquantity"></span></td>
			</tr>
			<tr >
				<td class='tabledata'>Enter product price</td>
				<td class='tabledata'><input type="text" class="textbox" id = "price"  name="price" onblur=checkvalue(this)><br>
					<span id="spanprice"></span></td>
			</tr>
			<tr>
				<td colspan = '2' align='right'>
					<button class='button' onclick="return validateInput()" type="submit">Submit</button>
				</td>
			</tr>
		</table>
	</form>
		
	</body>
</html>