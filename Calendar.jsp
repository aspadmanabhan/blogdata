<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" ">
  <script src="<c:url value='/resources/jquery/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" ></script>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

</head>
<body>
<ul class="nav nav-tabs">
  <li><a href="home">Home</a></li>
  
  <li><a href="#">Blogs</a></li>
  <li><a href="#">Chat Room</a></li>
  <li class="active"><a href="Calendar">Group Calendar</a></li>
    <li><a href="Logout">Logout</a>
</ul>

<iframe src="https://calendar.google.com/calendar/embed?src=8sak9alt6sjlkqlk31vmprlp64%40group.calendar.google.com&ctz=Asia/Calcutta" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
</body>
</html>