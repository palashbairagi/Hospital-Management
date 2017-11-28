<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<% 
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from death_info where id=?");
stmt.setInt(1,id);
ResultSet r=stmt.executeQuery();
if(r.next())
{
	String firstName=r.getString("first_name");
	String lastName=r.getString("last_name");
    String gender=r.getString("gender");
    String sonOf=r.getString("son_of");
    int age=Integer.parseInt(r.getString("age"));
	String deathPlace=r.getString("death_place");
	String phoneNumber=r.getString("contact_number1");
	String mobileNumber=r.getString("contact_number2");
	
	String houseNumber=r.getString("house_number");
	String street=r.getString("street"); 
	String city=r.getString("city"); 
	String state=r.getString("state");
	%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Death Certificate | Hospital Management System</title>
<script type="text/javascript" src="validation.js"></script>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.validate.js"></script>
</head>
<body>
<form action="updateBirthCertificate.jsp" method="get"  id="BirthForm" name="BirthForm" >
<center>
<input type="hidden" name="id" id="id" value="<%=id %>" />
<table>
<tr>
<td>First Name</td>
<td><input type="text" name="firstName" id="firstName" value="<%=firstName %>"></td></tr>
<tr>
<td>Last Name</td>
<td><input type="text" name="lastName" id="lastName" value="<%=lastName %>"></td></tr>


<tr>
<td>Gender</td>
<td><input type="text" name="gender" id="gender" value="<%=gender %>"></td></tr>

<tr>
<td>Son Of</td>
<td><input type="text" name="sonOf" id="sonOf" value="<%=sonOf %>"></td></tr>
<tr>
<td>Age</td>
<td><input type="text" name="age" id="age" value="<%=age%>"></td></tr>
<tr>
<td>Death Place</td>
<td><input type="text" name="deathPlace" id="deathPlace" value="<%=deathPlace%>"></td></tr>

<tr>
<td>PhoneNumber</td>
<td><input type="text" name="phoneNumber" id="phoneNumber" value="<%=phoneNumber%>"></td></tr>
<tr>
<td>MobileNumber</td>
<td><input type="text" name="mobileNumber" id="mobileNumber" value="<%=mobileNumber%>"></td></tr>

<tr>
<td>House Number</td><td><input type='text' name='houseNumber' id='houseNumber' value="<%=houseNumber%>"></td>
</tr>
<tr>
<td>Street</td>
<td><input type="text" name="street" id="street" value="<%=street%>"></td></tr>
<tr>
<td>City</td>
<td><input type="text" name="city" id="city" value="<%=city%>"></td></tr>
<tr>
<td>State</td>
<td><input type="text" name="state" id="state" value="<%=state%>"></td></tr>
<tr>
<td><input type="submit" name=update value="Update" onclick="validateDeathForm();"></td>
<td><input type="reset" name=cancel value="Cancel"></td>

</tr>
</table>
</center>
</form>
</body>
</html>
	<%
}%>
