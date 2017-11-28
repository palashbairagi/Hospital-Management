<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="addAppointment" method="get" name="addAppointment"></form>
<%

int doctorId=Integer.parseInt(request.getParameter("doctor_id"));
int patientId=Integer.parseInt(request.getParameter("patient_id"));
//String dateOfBirth=request.getParameter("dateOfBirth");
//int time=Integer.parseInt(request.getParameter("time"));
String priscription=request.getParameter("prescription");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("insert into appointment_info(doctor_id,patient_id,prescription) values(?,?,?)");
stmt.setInt(1,doctorId);
stmt.setInt(2,patientId);
stmt.setString(3,priscription);
stmt.executeUpdate();
%>
Appointment Is Ready
</body>
</html>