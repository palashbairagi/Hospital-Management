<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");
String gender=request.getParameter("gender");
String age=request.getParameter("age");
String title=request.getParameter("title");
String statusDetail=request.getParameter("status");
String phoneNumber=request.getParameter("phoneNumber");
String mobileNumber=request.getParameter("mobileNumber");
//String emailId=request.getParameter("emailId");
String houseNumber=request.getParameter("houseNumber");
String street=request.getParameter("street"); 
String city=request.getParameter("city"); 
String state=request.getParameter("state");
String salary=request.getParameter("salary");
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("update staff_info set first_Name=?,last_Name=?,gender=?,age=?,title=?,status_detail=?,contact_number1=?,contact_number2=?,house_number=?,street=?,city=?,state=?,salary=? where id=?");
stmt.setString(1,firstName);
stmt.setString(2,lastName);
stmt.setString(3,gender);
stmt.setString(4,age);
stmt.setString(5,title);
stmt.setString(6,statusDetail);
stmt.setString(7,phoneNumber);
stmt.setString(8,mobileNumber);
//stmt.setString(7,emailId);
stmt.setString(9,houseNumber);
stmt.setString(10,street);
stmt.setString(11,city);
stmt.setString(12,state);
stmt.setString(13,salary);
stmt.setInt(14,id);
stmt.executeUpdate();
%>

<b>Updated Successfully</b><br>