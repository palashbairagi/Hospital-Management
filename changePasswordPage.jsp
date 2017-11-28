<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<script type="text/javascript" src="validation.js"></script>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.validate.js"></script>
</head>
<body>
<form action="changePassword.jsp" name='changePassword' id='changePassword'>
<table>
	<tr>
		<td>Current Password
		<td><input type="password" name="currentPassword" id='currentPassword'>
	</tr>
	<tr>
		<td>New Password
		<td><input type="password" name="newPassword" id='newPassword'>
	</tr>
	<tr>
		<td>Confirm Password
		<td><input type="password" name="confirmPassword" id="confirmPassword">
	</tr>
	<tr>
		<td colspan=2 align="center"><input type="submit" value="Change Password" onClick="validatePassword();">
	</tr>
</table>
</form>
</body>
</html>