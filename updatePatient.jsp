<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String gender=request.getParameter("gender");
String age=request.getParameter("age");
String phoneNumber=request.getParameter("contactNumber1");
String mobileNumber=request.getParameter("contactNumber2");
String emailId=request.getParameter("emailId");
String houseNumber=request.getParameter("houseNumber");
String street=request.getParameter("street"); 
String city=request.getParameter("city"); 
String state=request.getParameter("state");
String occupation=request.getParameter("occupation");
String bloodGroup=request.getParameter("bloodGroup");
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("update patient_info set first_Name=?,last_Name=?,gender=?,age=?,contact_number1=?,contact_number2=?,email_id=?,house_number=?,street=?,city=?,state=?,occupation=?,blood_group=? where id=?");
stmt.setString(1,firstName);
stmt.setString(2,lastName);
stmt.setString(3,gender);
stmt.setString(4,age);
stmt.setString(5,phoneNumber);
stmt.setString(6,mobileNumber);
stmt.setString(7,emailId);
stmt.setString(8,houseNumber);
stmt.setString(9,street);
stmt.setString(10,city);
stmt.setString(11,state);
stmt.setString(12,occupation);
stmt.setString(13,bloodGroup);
stmt.setInt(14,id);
stmt.executeUpdate();
%>

<b>Updated Successfully</b><br>