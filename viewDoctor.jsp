<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Doctor | Hospital Management System</title>
</head>
<body>
<table>
<tr><th>First Name</th><th>Last Name</th><th>gender</th><th>Age</th><th>phoneNumber</th><th>mobileNumber</th><th>Email Id</th><th>HouseNumber</th><th>Street</th><th>City</th><th>State</th>
<th>designation</th><th>specialization</th><th>experience</th></tr>


<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from doctor_info");
ResultSet r=stmt.executeQuery();
while(r.next())
{
	int id=Integer.parseInt(r.getString("id"));
	String firstName=r.getString("first_Name");
	String lastName=r.getString("last_Name");
	String gender=r.getString("gender");
	String age=r.getString("age");
	String phoneNumber=r.getString("contact_number1");
	String mobileNumber=r.getString("contact_number2");
	String emailId=r.getString("email_id");
	String houseNumber=r.getString("house_number");
	String street=r.getString("street_name"); 
	String city=r.getString("city_name"); 
	String state=r.getString("state_name");
	String designation=r.getString("designation");
	String specialization=r.getString("specialization");
	String experience=r.getString("experience");
	
	%>
	
	<tr><td><%=firstName%></td><td><%=lastName%></td><td><%=gender %><td><%=age%></td><td><%=phoneNumber%></td><td><%=mobileNumber%></td><td><%=emailId%></td><td><%=houseNumber%></td><td><%=street%></td><td><%=city%></td>
	<td><%=state %></td><td><%=designation%></td><td><%=specialization%></td><td><%=experience%></td><td><a href="editDoctor.jsp?id=<%=id %>">Edit</a></td><td><a href="deleteDoctor.jsp?id=<%=id %>">Delete</a></td>
<%}%> 
</table>
</body>
</html>