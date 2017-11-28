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
<form action="addDoctor" method="get" name="addDoctor"></form>
<%

String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String userName=request.getParameter("userName");
String password=request.getParameter("password");
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
String designation=request.getParameter("designation");
String specialization=request.getParameter("specialization");
String experience=request.getParameter("experience");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("insert into doctor_info(first_name,last_name,gender,age,contact_number1,contact_number2,email_id,house_number,street_name,city_name,state_name,designation,specialization,experience) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1,firstName);
stmt.setString(2,lastName);
stmt.setString(3,gender);
//stmt.setDate(5,'2015-3-3');
stmt.setString(4,age);
stmt.setString(5,phoneNumber);
stmt.setString(6,mobileNumber);
stmt.setString(7,emailId);
stmt.setString(8,houseNumber);
stmt.setString(9,street);
stmt.setString(10,city);
stmt.setString(11,state);
stmt.setString(12,designation);
stmt.setString(13,specialization);
stmt.setString(14,experience);
stmt.executeUpdate();

PreparedStatement preparedStatement=con.prepareStatement("insert into user_info (user_name, password, type) values (?,?,'doctor')");
preparedStatement.setString(1,userName);
preparedStatement.setString(2,password);
preparedStatement.executeUpdate();
%>
Congratulation, You are Registered
</body>
</html>