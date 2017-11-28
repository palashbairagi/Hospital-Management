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
<form action="addBank" method="get" name="addBank"></form>
<%

String bloodBankName=request.getParameter("bloodBankName");
String notifierName=request.getParameter("notifierName");
int phoneNumber=Integer.parseInt(request.getParameter("phoneNumber"));
int mobileNumber=Integer.parseInt(("mobileNumber"));
int faxNumber=Integer.parseInt(("faxNumber"));
String emailId=request.getParameter("emailId");
String bloodType=request.getParameter("blood_type");
String houseNumber=request.getParameter("houseNumber");
String street=request.getParameter("street");
String city=request.getParameter("city");
String state=request.getParameter("state");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("insert into bank_info(blood_bank__name,notifier_name,contact_number1,contact_number2,fax_number,email_id,blood_type,house_number,street,city,state) values(?,?,?,?,?,?,?,?,?,?,?)");
stmt.setString(1,bloodBankName);
stmt.setString(2,notifierName);
stmt.setInt(4,phoneNumber);
stmt.setInt(5,mobileNumber);
stmt.setInt(6,faxNumber);
stmt.setString(7,emailId);
stmt.setString(8,houseNumber);
stmt.setString(9,street);
stmt.setString(10,city);
stmt.setString(11,state);
stmt.executeUpdate();
stmt.executeUpdate();
%>
Congratulation, Bank Registered
</body>
</html>