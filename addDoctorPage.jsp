<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Doctor| Hospital Management System</title>
<script type="text/javascript" src="validation.js"></script>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.validate.js"></script>
</head>
<body>
<form id="doctorForm" name="doctorForm" method="post" action="addDoctor.jsp">
  <center>
  <table width="332" border="1">
    <tr>
      <th width="174" scope="row">First Name </th>
      <td width="142"><input type="text" name="firstName" id="firstName" /></td>
    </tr>
    <tr>
      <th scope="row">Last Name </th>
      <td><input type="text" name="lastName" id="lastName" /></td>
    </tr>
	<tr>
	<td>
	User Name
	</td>
	<td>
	<input type="text" name='userName' id='userName'/>
	</td>
	</tr>
	<tr>
	<td>
	Password
	</td>
	<td>
	<input type="password" name='password' id='password'/>
	</td>
	</tr>
    <tr>
      <th scope="row">Gender</th>
      <td><input type="text" name="gender" /></td>
    </tr>
    <tr>
      <th scope="row">Date Of Birth </th>
      <td><input type="text" name="dateOfBirth" id="dateOfBirth" /></td>
    </tr>
    <tr>
      <th scope="row">Age</th>
      <td><input type="text" name="age" id="age" /></td>
    </tr>
    <tr>
      <th scope="row">Phone Number </th>
      <td><input type="text" name="phoneNumber" id="phoneNumber"/></td>
    </tr>
    <tr>
      <th scope="row">Mobile Number </th>
      <td><input type="text" name="mobileNumber" id="mobileNumber"/></td>
    </tr>
    <tr>
      <th scope="row">Email Id </th>
      <td><input type="text" name="emailId" id="emailId" /></td>
    </tr>
    <tr>
      <th scope="row">House Number </th>
      <td><input type="text" name="houseNumber" id="houseNumber"/></td>
    </tr>
    <tr>
      <th scope="row">Street</th>
      <td><input type="text" name="street" id="street" /></td>
    </tr>
    <tr>
      <th scope="row">City</th>
      <td><input type="text" name="city" id="city" /></td>
    </tr>
    <tr>
      <th scope="row">State</th>
      <td><input type="text" name="state" id="state" /></td>
    </tr>
    <tr>
      <th scope="row">Designation</th>
      <td><input type="text" name="designation" id="designation" /></td>
    </tr>
    <tr>
      <th scope="row">Specialization</th>
      <td><input type="text" name="specialization" id="specialization" /></td>
    </tr>
    <tr>
      <th scope="row">Experience</th>
      <td><input type="text" name="experience" id="experience"/></td>
    </tr>
    <tr>
      <th scope="row"><input type="submit" name="bt1" value="Add" onclick="validateDoctorForm();"/></th>
      <td><input type="button" name="bt2" value="Cancel" /></td>
    </tr>
  </table>
  </center>
</form>
</body>
</html>