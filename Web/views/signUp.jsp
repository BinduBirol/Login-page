<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
<script>

function matchPass(){
var p1= $("#password1").val();
var p2= $("#password2").val();
if(p1!==p2){
$("#passdiv").show();}
else{$("#passdiv").hide();};
};

</script>
</head>
<body>
<form action="signUp" method="post">
<table>
<tr>
<td>Email:</td><td><input type="text" name="Email" required/></td>
</tr>
<tr></tr>
<tr>
<td>Password:</td><td><input  id="password1" type="password" name="Password" required/></td>
</tr>
<tr></tr>
<tr>
<td>Confirm Password:</td><td><input  id="password2" type="password" name="ICpassword"/></td>
<td><div id="passdiv" style="color:red; display:none;"><li>Passwords dont match</li></div></td>
</tr>
<tr></tr>
<tr>
<td>Name:</td><td><input onClick="matchPass()" id="fullname" type="text" name="Name"/></td>
</tr>
<tr></tr>
<tr>
<td>UserName:</td><td><input type="text" name="username" required/></td>
</tr>
<tr></tr>
<tr>
<td>Occupation:</td><td><input type="text" name="occupation" required/></td>
</tr>
<tr></tr>
<tr>
<td>Sex:</td><td><input type="radio" name="sex" value="Male">Male</input>
<input type="radio" name="sex" value="Female">Female</input>
<input type="radio" name="sex" value="Others">Others</input></td>
</tr>
<tr></tr>
<tr>
<td>Address:</td><td><input type="text" name="Address" required/></td>
</tr>
<tr></tr>
<tr>
<td>Select your profile picture:</td><td><input name="photo" type="file" /></td>
</tr>
<tr>
<td></td><td><input type="submit" /></td>
</tr>
</table>
</form>
</body>
</html>