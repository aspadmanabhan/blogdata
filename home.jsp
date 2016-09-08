<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" ">
  <script src="<c:url value='/resources/jquery/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" ></script>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

</head>
<body>
<ul class="nav nav-tabs">
  <li class="active"><a href="#">Home</a></li>
  
  <li><a href="Blog">Blogs</a></li>
  <li><a href="room">Chat Room</a></li>
  <li><a href="Calendar">Group Calendar</a></li>
  <li><a href="Logout">Logout</a>
</ul>
<center>
<div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
    <li data-target="#myCarousel" data-slide-to="3"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
     <img src='<c:url value='/resources/images/image2.jpg' />' width="40%"/>
    </div>

    <div class="item">
      <img src='<c:url value='/resources/images/image3.jpg' />' width="20%"/>
    </div>

    <div class="item">
     <img src='<c:url value='/resources/images/image4.jpg' />' width="20%"/>
    </div>

    <div class="item">
      <img src='<c:url value='/resources/images/image1.jpg' />' width="20%"/>
    </div>
  </div>

</center>
</body>
</html>