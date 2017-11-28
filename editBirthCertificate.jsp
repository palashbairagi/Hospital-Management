<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<% 
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from birth_info where id=?");
stmt.setInt(1,id);
ResultSet r=stmt.executeQuery();
if(r.next())
{
	String childName=r.getString("child_name");
	String gender=r.getString("gender");
	String fatherName=r.getString("father_name");
	String motherName=r.getString("mother_name");
	
	String birthPlace=r.getString("birth_place");
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
<title>Edit Birth Certificate | Hospital Management System</title>
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
<td>Child Name</td>
<td><input type="text" name="childName" id="childName" value="<%=childName %>"></td></tr>
<tr>
<td>Gender</td>
<td><input type="text" name="gender" id="gender" value="<%=gender %>"></td></tr>

<tr>
<td>Father's Name</td>
<td><input type="text" name="fatherName" id="fatherName" value="<%=fatherName %>"></td></tr>
<tr>
<td>Mother's Name</td>
<td><input type="text" name="motherName" id="motherName" value="<%=motherName%>"></td></tr>
<tr>
<td>Birth Place</td>
<td><input type="text" name="birthPlace" id="birthPlace" value="<%=birthPlace%>"></td></tr>

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
<td><input type="submit" name=update value="Update" onclick="validateBirthForm();"></td>
<td><input type="reset" name=cancel value="Cancel"></td>

</tr>
</table>
</center>
</form>
</body>
</html>
	<%
}%>
