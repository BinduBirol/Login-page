<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<form action="userLogin" method="post">
<table>
<tr>
<td>Email:</td> 
<td><input type="text" name="email" placeholder="Email"></input></td>
</tr>
<tr>
<td>Password:</td>
<td><input type="password" name="password" /></td>
</tr>

<tr>
<td></td>
<td align="right"><button type="submit">Submit</button></td>
</tr>
</table>
</form>
Not a member? <a href="signUp.jsp">Sign Up</a> here.
</body>
</html>