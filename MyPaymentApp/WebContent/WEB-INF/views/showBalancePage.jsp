<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Show Balance</title>
<script type="text/javascript">
	function goBack() {
		window.history.back();
	}
</script>
</head>
<body>
	<div align="center">
		<form action="showBalance" method="post">
			<table>
				<tr>
					<td>Mobile Number</td>
					<td><input name="mobileNo" size="30"></input></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Show Balance"></td>
				</tr>
			</table>
		</form>
		<button onclick="goBack()">Back</button>
	</div>
</body>
</html>