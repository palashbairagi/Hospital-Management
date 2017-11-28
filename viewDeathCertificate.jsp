<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Death Certificate | Hospital Management System</title>
</head>
<body>
<table>
<tr><th>First Name</th><th>Last Name</th><th>Gender</th><th>Son Of</th><th>Death Place</th><th>Phone Number</th><th>Mobile Number</th><th>House Number</th><th>Street</th><th>City</th><th>State</th></tr>


<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from death_info");
ResultSet r=stmt.executeQuery();
while(r.next())
{
	int id=Integer.parseInt(r.getString("id"));
	String firstName=r.getString("first_name");
	String lastName=r.getString("last_name");
	String gender=r.getString("gender");
	String sonOf=r.getString("son_of");
	//int age=Integer.parseInt(r.getString("age"));
	String deathPlace=r.getString("death_place");
	//String gender=r.getString("gender");
	String phoneNumber=r.getString("contact_number1");
	String mobileNumber=r.getString("contact_number2");
	//String emailId=r.getString("email_id");
	String houseNumber=r.getString("house_number");
	String street=r.getString("street"); 
	String city=r.getString("city"); 
	String state=r.getString("state");	
	%>
	
	<tr>
	<td><%=firstName%></td>
	<td><%=lastName%></td>
	<td><%=gender%></td>
	<td><%=sonOf%></td>
	<td><%=deathPlace%></td>
	<td><%=phoneNumber%></td>
	<td><%=mobileNumber%></td>
	<td><%=houseNumber%></td>
	<td><%=street%></td>
	<td><%=city%></td>
	<td><%=state %></td>
	<td><a href="editDeathCertificate.jsp?id=<%=id %>">Edit</a></td>
	<td><a href="deleteDeathCertificate.jsp?id=<%=id %>">Delete</a></td>
<%}%> 
</table>
</body>
</html>