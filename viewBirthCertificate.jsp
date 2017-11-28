<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table>
<tr><th>Child Name</th><th>Gender</th><th>Father Name</th><th>Mother Name</th><th>Birth Place</th><th>phoneNumber</th><th>mobileNumber</th><th>HouseNumber</th><th>Street</th><th>City</th><th>State</th>
</tr>


<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from birth_info");
ResultSet r=stmt.executeQuery();
while(r.next())
{
	int id=Integer.parseInt(r.getString("id"));
	String childName=r.getString("child_name");
	String gender=r.getString("gender");
	String fatherName=r.getString("father_Name");
	String motherName=r.getString("mother_Name");
	//String gender=r.getString("gender");
	String birthPlace=r.getString("birth_place");
	String phoneNumber=r.getString("contact_number1");
	String mobileNumber=r.getString("contact_number2");
	//String emailId=r.getString("email_id");
	String houseNumber=r.getString("house_number");
	String street=r.getString("street"); 
	String city=r.getString("city"); 
	String state=r.getString("state");	
	%>
	
	<tr><td><%=childName%></td><td><%=gender%></td><td><%=fatherName%></td><td><%=motherName%></td><td><%=birthPlace%></td><td><%=phoneNumber%></td><td><%=mobileNumber%></td><td><%=houseNumber%></td><td><%=street%></td><td><%=city%></td>
	<td><%=state %></td><td><a href="editBirthCertificate.jsp?id=<%=id %>">Edit</a></td><td><a href="deleteBirthCertificate.jsp?id=<%=id %>">Delete</a></td>
<%}%> 
</table>
</body>
</html>