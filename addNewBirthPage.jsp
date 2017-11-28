<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form id="form1" name="form1" method="post" action="addNewBirth.jsp">
  <center>
  <table width="332" border="1">
    <tr>
      <th width="174" scope="row">Child Name </th>
      <td width="142"><input type="text" name="childName" /></td>
    </tr>
    
    <tr>
      <th width="174" scope="row">Gender </th>
      <td width="142"><input type="text" name="gender" /></td>
    </tr>
    
    
    <tr>
      <th width="174" scope="row">Father's Name </th>
      <td width="142"><input type="text" name="fatherName" /></td>
    </tr>
    <tr>
      <th scope="row">Mother's Name </th>
      <td><input type="text" name="motherName" /></td>
    </tr>
	<tr>
      <th scope="row">Date Of Birth </th>
      <td><input type="text" name="dateOfBirth" /></td>
    </tr>
    <tr>
      <th scope="row">Birth Place</th>
      <td><input type="text" name="birthPlace" /></td>
    </tr>
    
    <tr>
      <th scope="row">Birth Time</th>
      <td><input type="text" name="timeOfBirth" /></td>
    </tr>
    
    <tr>
      <th scope="row">Phone Number </th>
      <td><input type="text" name="phoneNumber" /></td>
    </tr>
    <tr>
      <th scope="row">Mobile Number </th>
      <td><input type="text" name="mobileNumber" /></td>
    </tr>
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
      <th scope="row"><input type="submit" name="add" value="Add" /></th>
      <td><input type="button" name="cancel" value="Cancel" /></td>
    </tr>
  </table>
  </center>
</form>
</body>
</html>