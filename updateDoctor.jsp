<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String gender=request.getParameter("gender");
String age=request.getParameter("age");
String phoneNumber=request.getParameter("phoneNumber");
String mobileNumber=request.getParameter("mobileNumber");
String emailId=request.getParameter("emailId");
String houseNumber=request.getParameter("houseNumber");
String street=request.getParameter("streetName"); 
String city=request.getParameter("cityName"); 
String state=request.getParameter("stateName");
String designation=request.getParameter("designation");
String specialization=request.getParameter("specialization");
String experience=request.getParameter("experience");
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("update doctor_info set first_Name=?,last_Name=?,gender=?,age=?,contact_number1=?,contact_number2=?,email_id=?,house_number=?,street_name=?,city_name=?,state_name=?,designation=?,specialization=?,experience=? where id=?");
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
stmt.setString(12,designation);
stmt.setString(13,specialization);
stmt.setString(14,experience);
stmt.setInt(15,id);
stmt.executeUpdate();
%>

<b>Updated Successfully</b><br>