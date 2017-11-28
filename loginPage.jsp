<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login | Hospital Management System</title>
<script type="text/javascript" src="validation.js"></script>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.validate.js"></script>
</head>
<body>
<form action="login.jsp" name="loginForm" id="loginForm" >
<center>
<table>
<tr>
		<td><strong>UserName</strong></td>
		<td><input type="text" name="userName" id="userName" /></td>
		<td><span id='userName' ></span></td>
	</tr>
<tr>
		<td><strong>Password</strong></td>
		<td><input type="password" name="password" id="password" /></td>
		<td><span id='password'></span></td>
</tr>
<tr>	
		<td colspan=3 align="center"><input type="submit" value="login" onclick="validateLoginForm();"></td>
		</tr>
</table>
</center>
</form>
</body>
</html>