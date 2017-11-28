<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
String wardNumber=request.getParameter("wardNumber");
String wardType=request.getParameter("wardType");
int id=Integer.parseInt(request.getParameter("id"));
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("update ward_info set ward_number=?,ward_type=? where id=?");
stmt.setString(1,wardNumber);
stmt.setString(2,wardType);

stmt.setInt(3,id);
stmt.executeUpdate();
%>

<b>Updated Successfully</b><br>