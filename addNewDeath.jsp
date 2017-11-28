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
<form action="addNewDeath" method="get" name="addNewDeath"></form>
<%
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String gender=request.getParameter("gender");
String sonOf=request.getParameter("sonOf");
//String dateOfDeath=request.getParameter("dateOfDeath");
//String dateOfTime=request.getParameter("dateOfTime");
String age=request.getParameter("age");
String deathPlace=request.getParameter("deathPalace");
String phoneNumber=request.getParameter("phoneNumber");
String mobileNumber=request.getParameter("mobileNumber");
//String emailId=request.getParameter("emailId");
String houseNumber=request.getParameter("houseNumber");
String street=request.getParameter("street");
String city=request.getParameter("city");
String state=request.getParameter("state");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("insert into death_info(first_name,last_name,gender,son_of,age,death_place,contact_number1,contact_number2,house_number,street,city,state) values(?,?,?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1,firstName);
stmt.setString(2,lastName);
stmt.setString(3,gender);
stmt.setString(4,sonOf);
//stmt.setDate(5,'2015-3-3');
stmt.setString(5,age);
stmt.setString(6,deathPlace);
stmt.setString(7,phoneNumber);
stmt.setString(8,mobileNumber);
//stmt.setString(7,emailId);
stmt.setString(9,houseNumber);
stmt.setString(10,street);
stmt.setString(11,city);
stmt.setString(12,state);
stmt.executeUpdate();%>
 New Death Certificate Added.
</body>
</html>