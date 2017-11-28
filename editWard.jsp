<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<% 
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from ward_info where id=?");
stmt.setInt(1,id);
ResultSet r=stmt.executeQuery();
if(r.next())
{
	
	String wardNumber=r.getString("ward_number");
	String wardType=r.getString("ward_type");
		%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Ward</title>
<script type="text/javascript" src="validation.js"></script>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.validate.js"></script>
</head>
<body>
<form action="updateWard.jsp" method="get" id="wardForm" name="wardForm">
<center>
<input type="hidden" name="id" id="id" value="<%=id %>" />
<table>
<tr>
<td>Ward Number</td>
<td><input type="text" name="wardNumber" id="wardNumber" value="<%=wardNumber %>"></td></tr>
<tr>
<td>Ward Type</td>
<td><input type="text" name="wardType" id="wardType" value="<%=wardType%>"></td></tr>
<tr>
<td><input type="submit" name=update value="Update" onclick="validateWardForm();"></td>
<td><input type="reset" name=cancel value="Cancel"></td>

</tr>
</table>
</center>
</form>
</body>
</html>
	<%
}%>
