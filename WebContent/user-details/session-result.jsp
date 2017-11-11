<%-- 
    Document   : session-result
    Created on : 25 Jun, 2012, 2:43:28 PM
    Author     : Abhishek
--%>

<%@page import="java.util.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1><span style="background-color: #FFFFcc">Access Request 
  and Response Example!</span></h1>
       <%//@include file="session.jsp" %>
  <b>session: </b><%=session%><br>     
  <b>Request: </b><%=request%><br>
  <b>Response: </b><%=response%><br>
  <b>Date: </b><%=new Date()%>
  </body>
</html>
