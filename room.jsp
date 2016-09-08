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
  <li class="active"><a href="Calendar">Group Calendar</a></li>
    <li><a href="Logout">Logout</a>
</ul>
  </div>
</nav>

    <div>
         <br> 
     From: <input type='text' id="user" value='<%=request.getAttribute("roomuser")%>' readonly='true'/></br>
     To:<input type='text' id='to'/></br>
     <input type="text" id="userinput" /></br>
    </div>
    <input type="submit"
            value="Send Message" onclick="start()" />
    <div id="messages"></div>
    <script type="text/javascript">
        var webSocket = new WebSocket(
                'ws://localhost:8080/webchatblog/websocket');

        webSocket.onerror = function(event) {
            onError(event)
        };

        webSocket.onopen = function(event) {
        	
            onOpen(event)
            
        };

        webSocket.onmessage = function(event) {
            onMessage(event)
        };

        function onMessage(event) {
        var res=event.data;  
        	
        	document.getElementById('messages').innerHTML += '<br />'
                    + event.data;
        
        }
        function onOpen(event) {
            document.getElementById('messages').innerHTML = 'Now Connection established';
        }

        function onError(event) {
            alert("error"+event.data);
        }

        function start() {
        	
            var text = document.getElementById("userinput").value;
                var user=document.getElementById("user").value;
                var to=document.getElementById("to").value;
            webSocket.send(user+","+to+","+text);
            return false;
        }
    </script>
</body>
</html>