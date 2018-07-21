<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Fund Transfer</title>
<script type="text/javascript">
	function goBack() {
		window.history.back();
	}
</script>
</head>
<body>
	<div align="center">
		<form action="fundTransfer" method="post">
			<table>
				<tr>
					<td>Your Mobile Number</td>
					<td><input name="sourceMobileNo" size="30"></input></td>
				</tr>
				<tr>
					<td>Target Mobile Number</td>
					<td><input name="targetMobileNo" size="30"></input></td>
				</tr>
				<tr>
					<td>Amount</td>
					<td><input name="wallet.balance" size="30"></input></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Transfer"></td>
				</tr>
			</table>
		</form>
		<button onclick="goBack()">Back</button>
	</div>
</body>
</html>