<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%

String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String fatherName=request.getParameter("fatherName");
String gender=request.getParameter("gender");
//String dateOfBirth=request.getParameter("dateOfBirth");
String age=request.getParameter("age");
String phoneNumber=request.getParameter("phoneNumber");
String mobileNumber=request.getParameter("mobileNumber");
String emailId=request.getParameter("emailId");
String houseNumber=request.getParameter("houseNumber");
String street=request.getParameter("street");
String city=request.getParameter("city");
String state=request.getParameter("state");
String occupation=request.getParameter("occupation");
String bloodGroup=request.getParameter("bloodGroup");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("insert into patient_info(first_name,last_name,father_Name,gender,age,contact_number1,contact_number2,email_id,house_number,street,city,state,occupation,blood_group) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1,firstName);
stmt.setString(2,lastName);
stmt.setString(3,fatherName);
stmt.setString(4,gender);
//stmt.setDate(5,'2015-3-3');
stmt.setString(5,age);
stmt.setString(6,phoneNumber);
stmt.setString(7,mobileNumber);
stmt.setString(8,emailId);
stmt.setString(9,houseNumber);
stmt.setString(10,street);
stmt.setString(11,city);
stmt.setString(12,state);
stmt.setString(13,occupation);
stmt.setString(14,bloodGroup);
stmt.executeUpdate();
%>
Congratulation, You are Registered
