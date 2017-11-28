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
<tr><th>Ward Number</th>
</tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from ward_info where allotment='0'");
ResultSet r=stmt.executeQuery();
while(r.next())
{
    int id=r.getInt("id");
	String wardNumber=r.getString("ward_number");
	
	%>
	
	<tr><td><%=wardNumber %></td><td><a href="allotWardPage.jsp?id=<%=id %>">Allot</a></td></tr>
<%}%> 
</table>
</body>
</html>