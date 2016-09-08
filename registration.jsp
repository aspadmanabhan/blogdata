<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>
<center>

<form:form commandName="register" method="post">
<table class="table table-stripped">
<tr>
<td>Enter User Name</td>
<td><form:input type="text" path="USER_NAME"/></td>
</tr>
<tr>
<td>
Enter Password
</td>
<td>
<form:input type="password" path="PASSWORD"/>
</td>
</tr>
<tr>
<td>
Enter Address
</td>
<td>
<form:input type='text' path="address"/>

</td>

</tr>
<tr>
<td>

Enter Contact No
</td>
<td>
<form:input type='text' path="phone"/>
</td>
</tr>
<tr>
<td>
Enter email
</td>
<td>
<form:input type='email' path="email"/>
</td>
</tr>
<tr>
<td>

</td>
<td>

<input type="submit" value="create user"/>
</td>
</tr>

</table>
</form:form>
</body>
</html>