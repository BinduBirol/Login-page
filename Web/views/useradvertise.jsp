<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="login.profile" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib prefix="s" uri="/struts-tags" %>

<title>User Advertise</title>
</head>
<body>
<s:form action="advertise" method="post">
 
      <s:textfield name="username" label="User name" value="" />
      <s:textfield  name="email" label="Email" />
      <s:textfield name="Pname"  label ="Product Name"/>  
      <s:textarea name="Pdesc"  label="Product Description" />
      <s:textfield name="price"  label="Asking Price" />
      <s:textfield name="phone"  label="Phone Number" />
      <s:textfield name="address"  label="Product Address" />
      <s:radio name="negotiable" label="Negotiable?" list="#{'yes':'Yes','no':'No' }"/>
      <s:submit/>
</s:form> 
</body>
</html>