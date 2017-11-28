<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Ward</title>
<script type="text/javascript" src="validation.js"></script>
<script type="text/javascript" src="jquery.js"></script>
<script type="text/javascript" src="jquery.validate.js"></script>
</head>
<body>
<form id="wardForm" name="wardForm" method="get" action="addWard.jsp">
  
  <center>
    <p>&nbsp;</p>
  <table width="335" border="1">
    <tr>
      <th width="172" scope="row">Ward Number </th>
      <td width="147"><input type="text" name="wardNumber" id="wardNumber"/></td>
    </tr>
    <tr>
      <th scope="row">Ward Type </th>
      <td><input type="text" name="wardType" id="wardType"/></td>
    </tr>
    <tr>
      <th scope="row"><input type="submit" name="add" value="Add" onclick="validateWardForm();"/></th>
      <td><input type="reset" name="cancel" value="Cancel" /></td>
    </tr>
  </table>
  </center>
</form>
</body>
</html>