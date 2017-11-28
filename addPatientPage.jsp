<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admit Form | Hospital Management System</title>
<script type="text/javascript" src="validation.js"></script>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.validate.js"></script>
</head>
<body>
<form id="patientForm" name="patientForm" method="post" action="addPatient.jsp">
  <center>
  <table width="200" border="1">
    <tr>
      <th width="164" scope="row">First Name </th>
      <td width="20"><input type="text" name="firstName" id="firstName"/>      </td>
    </tr>
    <tr>
      <th scope="row">Last Name </th>
      <td><input type="text" name="lastName" id="lastName"/>      </td>
    </tr>
    <tr>
      <th scope="row">Father's/Husband's Name </th>
      <td><input type="text" name="fatherName" id="fatherName"/></td>
    </tr>
    <tr>
      <th scope="row">Gender</th>
      <td><input type="text" name="gender" id="gender"/>      </td>
    </tr>
    <tr>
      <th scope="row">Date Of Birth </th>
      <td><input type="text" name="dateOfBirth" id="dateOfBirth"/>      </td>
    </tr>
    <tr>
      <th scope="row">Age</th>
      <td><input type="text" name="age" id="age"/></td>
    </tr>
    <tr>
      <th scope="row">Phone Number </th>
      <td><input type="text" name="phoneNumber" id="phoneNumber"/>      </td>
    </tr>
    <tr>
      <th scope="row">Mobile Number  </th>
      <td><input type="text" name="mobileNumber" id="mobileNumber"/>      </td>
    </tr>
    <tr>
      <th scope="row">Email Id </th>
      <td><input type="text" name="emailId" id="emailId"/>      </td>
    </tr>
    <tr>
      <th scope="row">House Number </th>
      <td><input type="text" name="houseNumber" id="houseNumber"/>      </td>
    </tr>
    <tr>
      <th scope="row">Street</th>
      <td><input type="text" name="street" id="street"/>      </td>
    </tr>
    <tr>
      <th scope="row">City</th>
      <td><input type="text" name="city" id="city"/>      </td>
    </tr>
    <tr>
      <th scope="row">State</th>
      <td><input type="text" name="state" id="state"/>      </td>
    </tr>
    <tr>
      <th scope="row">Occupation</th>
      <td><input type="text" name="occupation" id="occupation"/>      </td>
    </tr>
    <tr>
      <th scope="row">Blood Group </th>
      <td><input type="text" name="bloodGroup" id="bloodGroup"/>      </td>
    </tr>
    <tr>
      <th scope="row"><input type="submit" value="Admit" onclick="validatePatientForm();"/></th>
      <td><input type="button" name="bt2" value="Cancel" /></td>
    </tr>
  </table>
  </center>
</form>
</body>
</html>