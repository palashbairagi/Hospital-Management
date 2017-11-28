<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Appointment | Hospital Management System</title>
</head>
<body>
<table>
<tr><th>Doctor Id</th><th>Patient Id</th><th>Date Of Appointment</th><th>Time</th><th>Prescription</th></tr>


<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from appointment_info");
ResultSet r=stmt.executeQuery();
while(r.next())
{
	int id1=Integer.parseInt(r.getString("doctor_id"));
	int id2=Integer.parseInt(r.getString("patient_id"));
	String prescription=r.getString("prescription");%>
	
	<tr><td><%=id1%></td><td><%=id2%></td><td><%=prescription%></td><td><a href="editAppointment.jsp?id=<%=id1 %>">Edit</a></td><td><a href="deleteAppointment.jsp?id=<%=id1 %>">Delete</a></td>
</tr>
<%}%> 
</table>

</body>
</html>