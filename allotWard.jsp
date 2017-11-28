<%@ page import="java.sql.*" %>

<% 

String wardId=request.getParameter("wardId");
String patientId=request.getParameter("patientId");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
PreparedStatement stmt=con.prepareStatement("update ward_info set allotment='0' where allotment=?");
stmt.setString(1,patientId);
stmt.executeUpdate();
stmt=con.prepareStatement("update ward_info set allotment=? where id=?");
stmt.setString(1,patientId);
stmt.setString(2,wardId);
stmt.executeUpdate();


//System.out.println(wardId+patientId);
%>
alloted successfully