<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script language="text/javascript">
function goforward()
{
windows.history.back();
}
</script>
<link rel="stylesheet" href="<c:url value='/resources/bootstrap/css/bootstrap.min.css'/>" ">
  <script src="<c:url value='/resources/jquery/jquery.min.js'/>" ></script>
  <script src="<c:url value='/resources/bootstrap/js/bootstrap.min.js'/>" ></script>

<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body onload="goback()">
<center>


<br>
  


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
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">Modal title</h4>

            </div>
            <div class="modal-body"><div class="te"></div></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">Modal title</h4>

            </div>
            <div class="modal-body"><div class="te"></div></div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<center>


<button type="button" data-toggle="collapse" data-target="#logscreen" class='btn btn-info'>click to login</button>
<div id='logscreen' class="collapse">

<h3>
Login Form
</h3>
<c:if test="${not empty error }">
   ${error}
 </c:if>
<div class="panel panel-primary">
<%

if(request.getParameter("login")!=null)
{
	out.println("invalid details");
}
%>

<form method='post' action="<c:url value='/loginProcess' />	" class="form-group">	 
<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" class="form-control" />
<div class="form-group">

    <label for="User Name" class="control-label col-sm-2">User Name:</label>
    
    <input type="text"  name='j_username' class="form-control" required="true"/>
 
  </div>
  <div class="form-group">
    <label for="password" class="control-label col-sm-2">Password</label>
    
    <input type="password"  name='j_password' class="form-control" required="true"/>
  
  </div>
  <div class="form-group">
 <c:if test="${not empty msg}">
 ${msg}
 </c:if>
 <input type="submit"  class='btn btn-primary' value='Login' name='login'/>
    
    <a href='registration' class="btn btn-info">Register new user</a>
    </div>
    </form>
    </div>

 </div></center>
  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>

</center>
</body>
</html>