<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Ward</title>
</head>
<body>
<table>
<tr><th>Ward Number</th><th>Ward Type</th><th>Allot</th></tr>

<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("select * from ward_info");
ResultSet r=stmt.executeQuery();
while(r.next())
{
int id=	r.getInt("id");
String wardNumber=r.getString("ward_number");
String wardType=r.getString("ward_type");
String allotment=r.getString("allotment");%>

<tr><td><%=wardNumber %></td><td><%=wardType %></td>
<% if(allotment.equals("0"))
{%>
<td>Available</td>
<%} 
else
{
PreparedStatement ps=con.prepareStatement("select first_name,last_name from patient_info where id=?");
ps.setString(1,allotment);
ResultSet r1=ps.executeQuery();

if(r1.next()){
String name=r1.getString("first_name")+" "+r1.getString("last_name");
%>

<td><%=name %></td>	

<%}}%>


<td><a href="editWard.jsp?id=<%=id%>">Edit</a></td><td><a href="deleteWard.jsp?id=<%=id%>">Delete</a></td></tr>
<%}%>

</table>
</body>
</html>