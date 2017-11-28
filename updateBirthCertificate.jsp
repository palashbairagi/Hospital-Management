<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String childName=request.getParameter("childName");
String gender=request.getParameter("gender");
String fatherName=request.getParameter("fatherName");
String motherName=request.getParameter("motherName");
//String gender=request.getParameter("gender");
//String
String birthPlace=request.getParameter("birthPlace");
String phoneNumber=request.getParameter("phoneNumber");
String mobileNumber=request.getParameter("mobileNumber");
//String emailId=request.getParameter("emailId");
String houseNumber=request.getParameter("houseNumber");
String street=request.getParameter("street"); 
String city=request.getParameter("city"); 
String state=request.getParameter("state");
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("update birth_info set child_name=?,gender=?,father_Name=?,mother_Name=?,birth_place=?,contact_number1=?,contact_number2=?,house_number=?,street=?,city=?,state=? where id=?");
stmt.setString(1,childName);
stmt.setString(2,gender);
stmt.setString(3,fatherName);
stmt.setString(4,motherName);
stmt.setString(5,birthPlace);
stmt.setString(6,phoneNumber);
stmt.setString(7,mobileNumber);
//stmt.setString(7,emailId);
stmt.setString(8,houseNumber);
stmt.setString(9,street);
stmt.setString(10,city);
stmt.setString(11,state);
stmt.setInt(12,id);
stmt.executeUpdate();
%>

<b>Updated Successfully</b><br>