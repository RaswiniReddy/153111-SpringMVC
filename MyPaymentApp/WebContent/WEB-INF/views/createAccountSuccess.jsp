<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript">
	function goBack() {
		window.history.back();
	}
</script>
</head>
<body>
	<div>
		Welcome Mr./Mrs. <font size="10" style="font-weight: bold;">${customer.name}</font><br>
		Registered Mobile Number:<b> ${customer.mobileNo}</b><br>
		Wallet Balance:<b> ${customer.wallet.balance}</b><br>
		<button onclick="goBack()">Back</button>
	</div>
</body>
</html>