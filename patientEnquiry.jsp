<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Patient Enquiry | Hospital Management System</title>
</head>
<body>
<table>
<tr><th>Patient Name</th><th>Ward Number</th></tr>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");

String firstName=request.getParameter("firstName");
String lastName=request.getParameter("lastName");

PreparedStatement ps;

if(lastName==null || lastName.equals(""))
{
	ps=con.prepareStatement("select id,first_name,last_name from patient_info where first_name like '"+firstName+"%'");
	//ps.setString(1,firstName);
	
}

else if(firstName==null || firstName.equals(""))
{
	ps=con.prepareStatement("select id,first_name,last_name from patient_info where last_name like '"+lastName+"%'");
	//ps.setString(1,lastName);
	
}
else
{
	ps=con.prepareStatement("select id,first_name,last_name from patient_info where first_name like '"+firstName+"%' and last_name like '"+lastName+"%'");
	//ps.setString(1,firstName);
	//ps.setString(2,lastName);
	
}

ResultSet r=ps.executeQuery();
while(r.next())
{
int id=r.getInt("id");
String name=r.getString("first_name")+" "+r.getString("last_name");

PreparedStatement ps1=con.prepareStatement("select ward_number from ward_info where allotment=?");
ps1.setInt(1,id);
ResultSet rs=ps1.executeQuery();
if(rs.next())
{  
String wardNumber=rs.getString("ward_number");
%>
<tr><td><%=name %></td>
<td><%=wardNumber%></td></tr>

<%}
else
{%>
<tr><td><%=name %></td>
<td>No Record Found</td></tr>
	
<%}

}%>
</table>
</body>
</html>