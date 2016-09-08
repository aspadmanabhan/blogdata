<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Blog</title>
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" ">
  <script src="<c:url value='/resources/jquery/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" ></script>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

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
  
  <li><a href="edit">Edit a blog</a></li>
  <li><a href="viewblog">View  blogs</a></li>
  <li><a href="delete">Delete a blog</a></li>
</ul>
</div>
<% java.util.List<com.blog.Blog> lst=(java.util.List)request.getAttribute("bloglist");
  for(com.blog.Blog b:lst) { %><form:form method='post' action='edit' commandName='edit'>
	 <form:input type='text' path='blogId' value='<%=b.getBlogId() %>' readonly="true"/>
	 <form:input path='username' value='<%=b.getUsername() %>' readonly="true"/><br/>
      <form:textarea path='blogdata' rows='10' cols='100' placeholder='<%=b.getBlogdata() %>' required='true'/><br/>
      <input type='submit' value='publish' class='btn btn-primary'/><br/>
     <%out.println("<a href='delete?id="+b.getBlogId()+"' class='btn btn-primary'>delete blog</a>");%>
     </form:form>
 <%}
  %>
</body>
</html>
</body>
</html>