<%-- 
    Document   : header
    Created on : 20 Jun, 2012, 9:26:00 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="header">
<div class="logo">
  <!--<h1 class="logo">oceanic<span class="logo-light">template</span></h1>-->
  <h1 class="logo"></h1>
</div>
<!--<div class="navigation">-->
  <!--<ul>
    <li><a href="link to homepage">home</a> </li>
    <li><a href="link to page 1">page 1</a> </li>
    <li><a href="link to page 2">page 2</a> </li>
    <li><a href="link to page 3">page 3</a> </li>
    <li><a href="link to page 4">page 4</a> </li>
    <li><a href="link to page 5">page 5</a></li>
  </ul>-->
  <div id="top-nav">
  <ul>
      <s:form action="actionLogin">
      <li>
          <s:textfield name="lusername" size="30" maxlength="45" value="" id="lusername" label="User Name" required="true"/>
      </li>
      <li>
          <s:password name="lpassword" size="30" maxlength="45" value="" id="lpassword" label="Password" required="true"/>
      </li>
      <li>
      <s:submit value="Login"></s:submit></li>
      <!--<li><a href="actionForgotPassword">Forgot Password</a></li>-->
      <!--<a href="actionForgotPassword">Forgot Password</a>-->
      </s:form >
      
  </ul>
      
  </div>
</div>
    </body>
</html>
