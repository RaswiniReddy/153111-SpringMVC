<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Create New Account</title>
<style type="text/css">
.error {
	color: red;
	font-weight: bold;
}
</style>
<script type="text/javascript">
	function goBack() {
		window.history.back();
	}
</script>
</head>
<body>
	<div align="center">
		<form:form action="createCustomer" method="post"
			modelAttribute="customer">
			<table>
				<tr>
					<td>Name</td>
					<td><form:input path="name" size="30"></form:input></td>
					<td><form:errors path="name" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td>Mobile Number</td>
					<td><form:input path="mobileNo" size="30"></form:input></td>
					<td><form:errors path="mobileNo" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td>Wallet Balance</td>
					<td><form:input path="wallet.balance" size="30"></form:input></td>
					<td><form:errors path="wallet.balance" cssClass="error"></form:errors></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Create Account"></td>
				</tr>
			</table>
		</form:form>
		<button onclick="goBack()">Back</button>
	</div>
</body>
</html>