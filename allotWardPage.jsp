<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Allot Ward</title>
</head>
<body>
<table>
<tr><th>First Name</th><th>Last Name</th><th>Father's/Husband's Name</th><th>gender</th><th>Age</th><th>phoneNumber</th><th>mobileNumber</th><th>Email Id</th><th>HouseNumber</th><th>Street</th><th>City</th><th>State</th>
<th>occupation</th><th>BloodGroup</th></tr>


<%
int wardId=Integer.parseInt(request.getParameter("id"));

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from patient_info");
ResultSet r=stmt.executeQuery();
while(r.next())
{
	int patientId=Integer.parseInt(r.getString("id"));
	String firstName=r.getString("first_name");
	String lastName=r.getString("last_name");
	String fatherName=r.getString("father_name");
	String gender=r.getString("gender");
	String age=r.getString("age");
	String phoneNumber=r.getString("contact_number1");
	String mobileNumber=r.getString("contact_number2");
	String emailId=r.getString("email_id");
	String houseNumber=r.getString("house_number");
	String street=r.getString("street"); 
	String city=r.getString("city"); 
	String state=r.getString("state");
	String occupation=r.getString("occupation");
	String bloodGroup=r.getString("blood_group");%>
	
	<tr><td><%=firstName%></td><td><%=lastName%></td><td><%= fatherName%></td><td><%=gender %><td><%=age%></td><td><%=phoneNumber%></td><td><%=mobileNumber%></td><td><%=emailId%></td><td><%=houseNumber%></td><td><%=street%></td><td><%=city%></td>
	<td><%=state %></td><td><%=occupation%></td><td><%=bloodGroup%></td><td><a href="allotWard.jsp?wardId=<%=wardId%>&patientId=<%=patientId%>">Allot</a></td>
<%}%> 
</table>
</body>
</html>