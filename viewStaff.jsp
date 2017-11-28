<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Staff | Hospital Management System</title>
</head>
<body>
<table>
<tr><th>First Name</th><th>Last Name</th><th>gender</th><th>Age</th><th>Title</th><th>Status Detail</th><th>phoneNumber</th><th>mobileNumber</th><th>HouseNumber</th><th>Street</th><th>City</th><th>State</th>
<th>Salary</th></tr>


<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from staff_info");
ResultSet r=stmt.executeQuery();
while(r.next())
{
	int id=Integer.parseInt(r.getString("id"));
	String firstName=r.getString("first_Name");
	String lastName=r.getString("last_Name");
	String gender=r.getString("gender");
	String age=r.getString("age");
	String title=r.getString("title");
	String statusDetail=r.getString("status_detail");
	String phoneNumber=r.getString("contact_number1");
	String mobileNumber=r.getString("contact_number2");
	//String emailId=r.getString("email_id");
	String houseNumber=r.getString("house_number");
	String street=r.getString("street"); 
	String city=r.getString("city"); 
	String state=r.getString("state");
	int salary=Integer.parseInt(r.getString("salary"));
	
	%>
	
	<tr><td><%=firstName%></td><td><%=lastName%></td><td><%=gender %><td><%=age%></td><td><%=title%></td><td><%=statusDetail%></td><td><%=phoneNumber%></td><td><%=mobileNumber%></td><td><%=houseNumber%></td><td><%=street%></td><td><%=city%></td>
	<td><%=state %></td><td><%=salary%></td><td><a href="editStaff.jsp?id=<%=id %>">Edit</a></td><td><a href="deleteStaff.jsp?id=<%=id %>">Delete</a></td>
<%}%> 
</table>
</body>
</html>