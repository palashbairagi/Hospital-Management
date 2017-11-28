<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form id="form1" name="form1" method="post" action="addStaff.jsp">
  <center>
  <table width="332" border="1">
    <tr>
      <th width="174" scope="row">First Name </th>
      <td width="142"><input type="text" name="firstName" /></td>
    </tr>
    <tr>
      <th scope="row">Last Name </th>
      <td><input type="text" name="lastName" /></td>
    </tr>
	 <tr>
      <th scope="row">User Name </th>
      <td><input type="text" name="userName" /></td>
    </tr>
	 <tr>
      <th scope="row">Password </th>
      <td><input type="text" name="password" /></td>
    </tr><tr>
      <th scope="row">Gender</th>
      <td><input type="radio" name="gender" value="M" checked/>M
      <input type="radio" name="gender" value="F" />F</td>
    </tr>
    <tr>
      <th scope="row">Date Of Birth </th>
      <td><input type="text" name="dateOfBirth" /></td>
    </tr>
    <tr>
      <th scope="row">Age</th>
      <td><input type="text" name="age" /></td>
    </tr>
    
    <tr>
      <th scope="row">Hire Date</th>
      <td><input type="text" name="hireDate" /></td>
    </tr>
    
    <tr>
      <th scope="row">Title </th>
      <td><input type="text" name="title" /></td>
    </tr>
    
    <tr>
      <th scope="row">Status </th>
      <td>
      <input type="radio" name="status" value="Active" checked/>Active
      <input type="radio" name="status" value="Inactive" />Inactive
 </td>   </tr>
    
    <tr>
      <th scope="row">Phone Number </th>
      <td><input type="text" name="phoneNumber" /></td>
    </tr>
    <tr>
      <th scope="row">Mobile Number </th>
      <td><input type="text" name="mobileNumber" /></td>
    </tr>
    <tr>
    <tr>
      <th scope="row">House Number </th>
      <td><input type="text" name="houseNumber" /></td>
    </tr>
    <tr>
      <th scope="row">Street</th>
      <td><input type="text" name="street" /></td>
    </tr>
    <tr>
      <th scope="row">City</th>
      <td><input type="text" name="city" /></td>
    </tr>
    <tr>
      <th scope="row">State</th>
      <td><input type="text" name="state" /></td>
    </tr>
    <tr>
      <th scope="row">Salary</th>
      <td><input type="text" name="salary" /></td>
    </tr>
    <tr>
      <th scope="row">Shift Time</th>
      <td><input type="text" name="shiftTime" /></td>
    </tr>
    <tr>
      <th scope="row"><input type="submit" name="submit" value="Add" /></th>
      <td><input type="button" name="cancel" value="Cancel" /></td>
    </tr>
  </table>
  </center>
</form>
</body>
</html>