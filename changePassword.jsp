<%@ page import="java.sql.*" %>
<%	
		String userId=(String) session.getAttribute("userId");		
		String currentPassword=request.getParameter("currentPassword");
		String newPassword=request.getParameter("newPassword");
		
		try{
				Class.forName("com.mysql.jdbc.Driver");
				Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospitalManagement","hospital","hospital");
				
				PreparedStatement stmt=con.prepareStatement("select * from user_info where id=? and password=?");
				stmt.setString(1,userId);
				stmt.setString(2,currentPassword);
				ResultSet r=stmt.executeQuery();

				if(r.next())
					{
						PreparedStatement stmt1=con.prepareStatement("update user_info set password=? where id=?");
						stmt1.setString(1,newPassword);
						stmt1.setString(2,userId);
						stmt1.executeUpdate();

						if(r.getString("type").equals("receptionist"))
							{
							%>
							<script>alert('Password Changed Successfully');</script>
							<jsp:forward page="receptionist.jsp"></jsp:forward>	
							<%}
						else
							{
								%>
								<script>alert('Password Changed Successfully');</script>
								<jsp:forward page="doctor.jsp"></jsp:forward>	
								<%	
							}
					}
				else
					{
						%>
						Invalid current Password
						<jsp:include page="changePasswordPage.jsp"></jsp:include>
						<%}
			}catch(Exception e)
				{   
					out.print("<script>alert('Unable To Change Password');</script>");
					System.out.println("Exception by Change Password "+e);
				}
 %>