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
<form id="appointmentForm" name="appointmentForm" method="post" action="addAppointment.jsp">
  <center>
  <table width="332" border="1">
    <tr>
      <th width="174" scope="row">Doctor Id </th>
      <td width="142"><input type="text" name="docotrId" id="doctorId" /></td>
    </tr>
    <tr>
      <th scope="row">Patient Id </th>
      <td><input type="text" name="patientId" id="patientId" /></td>
    </tr>
	<tr>
      <th scope="row">Prescription</th>
      <td><input type="text" name="experience" id="experience"/></td>
    </tr>
    <tr>
      <th scope="row"><input type="submit" name="Add" value="Add" onclick="validateAppointmentForm();"/></th>
      <td><input type="button" name="Cancel" value="Cancel" /></td>
    </tr>
  </table>
  </center>
</form>
</body>
</html>