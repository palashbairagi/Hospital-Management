<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<% 
int id=Integer.parseInt(request.getParameter("doctor_id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from appointment_info where doctor_id=?");
stmt.setInt(1,id);
ResultSet r=stmt.executeQuery();
if(r.next())
{
    int patientId =Integer.parseInt(r.getString("patient_id"));
	String prescription=r.getString("prescription");%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Patient | Hospital Management System</title>
<script type="text/javascript" src="validation.js"></script>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.validate.js"></script>
</head>
<body>
<form action="updateAppointment.jsp" method="post" id="appointmentForm" name="appointmentForm">
<center>
<input type="hidden" name="id" id="id" value="<%=id%>"/>
<table>
<tr>
<td>Patient Id</td>
<td><input type="text" name="patientId" id="patientId" value="<%=patientId %>"></td></tr>
<tr>
<td>Prescription</td>
<td><input type="text" name="prescription" id="prescription" value="<%=prescription%>"></td></tr>
<tr>
<td><input type="submit" name="update" value="Update" onclick="validatePatientForm();"></td>
<td><input type="reset" name="cancel" value="Cancel"></td>
</tr>
</table>

</center>
</form>
</body>
</html>
	<%
}%>
