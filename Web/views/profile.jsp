<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile</title>
<style type="text/css">
.btn{
	align:right;
	float:right;
}
.btn button{
height:35px;
}
.btn button:hover{
background-color: #f105ec ;
}
.proimage{
width:100px;
height:100px;
}
</style>
</head>
<body>
<a class="btn" href="login.jsp">Log Out</a>
<h2>Profile:</h2>
<a class="btn" href="useradvertise.jsp"><button name="useradvertise">Sell your product</button></a>
<img class="proimage" src="images/userdefault.png" alt="images/userdefault.png"/>
<table>
<tr><td>UserName:</td><td><s:property value="username"/></td></tr>
<tr><td>Name:</td><td><s:property value="Name"/></td></tr>
<tr><td>Email:</td><td><s:property value="email"/></td></tr>
<tr><td>Occupation:</td><td><s:property value="occupation"/></td></tr>
<tr><td>Address:</td><td><s:property value="Address"/></td></tr>
<tr><td>Sex:</td><td><s:property value="sex"/></td></tr>
</table>
<hr>
</body>
</html>