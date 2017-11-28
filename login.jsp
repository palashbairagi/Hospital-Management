<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
String userName=request.getParameter("userName");
String password=request.getParameter("password");

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement preparedStatement=con.prepareStatement("select * from user_info where user_name=? and password=?");
preparedStatement.setString(1, userName);
preparedStatement.setString(2, password);
ResultSet resultSet=preparedStatement.executeQuery();
if(resultSet.next())
{
	String type=resultSet.getString("type");
	if(type.equals("doctor"))
	{
%>
	<jsp:forward page="doctor.jsp"></jsp:forward>	
<%	}
	else if(type.equals("receptionist"))
	{
%>		
	<jsp:forward page="receptionist.jsp"></jsp:forward>
<%	}
	else
	{
%>
		Access is denied 
		<jsp:include page="loginPage.jsp"></jsp:include>
<%
	}
 }

  else
  {
%>
		Invalid Username or Password
		<jsp:include page="loginPage.jsp"></jsp:include>
<%
  }
%>