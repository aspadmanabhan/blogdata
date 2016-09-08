<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog</title>
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" ">
  <script src="<c:url value='/resources/jquery/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" ></script>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
</head>
<body>
<ul class="nav nav-tabs">
  <li><a href="home">Home</a></li>
  
  <li class="active"><a href="Blog">Blogs</a></li>
  <li><a href="#">Chat Room</a></li>
  <li><a href="Calendar">Group Calendar</a></li>
</ul>
<div>
<ul class="nav nav-tabs">
  <li class="active"><a href="addblog">Add a blog</a></li>
  
  <li ><a href="Blog">Edit a blog</a></li>
  <li><a href="#">View  blogs</a></li>
  <li><a href="Calendar">Delete a blog</a></li>
</ul>
  <img src='<c:url value='/resources/images/image2.jpg' />' width="60%"/>
</div>
</body>
</html>