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
<form action="addStaff" method="get" name="addStaff"></form>
<%

String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String userName=request.getParameter("userName");
String password=request.getParameter("password");
String gender=request.getParameter("gender");
//String dateOfBirth=request.getParameter("dateOfBirth");
String age=request.getParameter("age");
String hireDate=request.getParameter("hireDate");
String title=request.getParameter("title");
String statusDetail=request.getParameter("statusDetail");
String phoneNumber=request.getParameter("phoneNumber");
String mobileNumber=request.getParameter("mobileNumber");
//String emailId=request.getParameter("emailId");
String houseNumber=request.getParameter("houseNumber");
String street=request.getParameter("street");
String city=request.getParameter("city");
String state=request.getParameter("state");
int salary=Integer.parseInt(request.getParameter("salary"));
//int shiftTime=Integer.parseInt(request.getParameter("shiftTime"));

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("insert into staff_info(first_name,last_name,gender,age,title,status_detail,contact_number1,contact_number2,house_number,street,city,state,salary) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1,firstName);
stmt.setString(2,lastName);
stmt.setString(3,gender);
//stmt.setDate(5,'2015-3-3');
stmt.setString(4,age);
//stmt.setDate(5,hireDate);
stmt.setString(5,title);
stmt.setString(6,statusDetail);
stmt.setString(7,phoneNumber);
stmt.setString(8,mobileNumber);
//stmt.setString(7,emailId);
stmt.setString(9,houseNumber);
stmt.setString(10,street);
stmt.setString(11,city);
stmt.setString(12,state);
stmt.setInt(13,salary);
//stmt.setInt(15,shiftTime);
stmt.executeUpdate();

PreparedStatement preparedStatement=con.prepareStatement("insert into user_info (user_name, password, type) values (?,?,?)");
preparedStatement.setString(1,userName);
preparedStatement.setString(2,password);
preparedStatement.setString(3,title);
preparedStatement.executeUpdate();
%>
Congratulation, You are Registered
</body>
</html>