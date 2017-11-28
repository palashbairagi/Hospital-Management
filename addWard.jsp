<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String wardNumber=request.getParameter("wardNumber");
String wardType=request.getParameter("wardType");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("insert into ward_info(ward_number,ward_type,allotment) values(?,?,?)");
stmt.setString(1,wardNumber);
stmt.setString(2,wardType);
stmt.setString(3,"0");
stmt.executeUpdate();
%>
Added
</body>
</html>