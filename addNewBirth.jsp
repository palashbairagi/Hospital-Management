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
<form action="addNewBirth" method="get" name="addNewBirth"></form>
<%
String childName=request.getParameter("childName");
String gender=request.getParameter("gender");
String fatherName=request.getParameter("fatherName");
String motherName=request.getParameter("motherName");

//String dateOfBirth=request.getParameter("dateOfBirth");
String birthPlace=request.getParameter("birthPlace");
//String timeOfBirth=request.getParameter("timeOfBirth");
String phoneNumber=request.getParameter("phoneNumber");
String mobileNumber=request.getParameter("mobileNumber");
//String emailId=request.getParameter("emailId");
String houseNumber=request.getParameter("houseNumber");
String street=request.getParameter("street");
String city=request.getParameter("city");
String state=request.getParameter("state");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("insert into birth_info(child_name,gender,father_name,mother_name,birth_place,contact_number1,contact_number2,house_number,street,city,state) values(?,?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1,childName);
stmt.setString(2,gender);
stmt.setString(3,fatherName);
stmt.setString(4,motherName);
//stmt.setDate(5,'2015-3-3');
stmt.setString(5,birthPlace);
stmt.setString(6,phoneNumber);
stmt.setString(7,mobileNumber);
//stmt.setString(7,emailId);
stmt.setString(8,houseNumber);
stmt.setString(9,street);
stmt.setString(10,city);
stmt.setString(11,state);
stmt.executeUpdate();
%>
Congratulations, New Birth Certificate Added.
</body>
</html>