<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

int patientId=Integer.parseInt(request.getParameter("patient_id"));
String prescription=request.getParameter("prescription");
int id=Integer.parseInt(request.getParameter("doctor_id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("update appointment_info set patient_id=?,prescription=? where id=?");
stmt.setInt(1,patientId);
stmt.setString(2,prescription);
stmt.setInt(3,id);
stmt.executeUpdate();
%>

<b>Updated Successfully</b><br>