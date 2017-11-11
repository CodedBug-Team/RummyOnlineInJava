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
        <link rel="icon" type="image/png" href="images/logo.png">
        <title>JSP Page</title>
    </head>
    <body>
        
       <div class="header">
           <!--<div style="width:975px;height:300px;-webkit-border-radius: 20px;-moz-border-radius: 20px;border-radius: 20px;background:rgba(227,100,54,0.6);">-->
               <!--<div style="width:975px;height:113px;-webkit-border-radius: 20px;-moz-border-radius: 20px;border-radius: 20px;border:2px solid #4A4A00;background:rgba(82,14,9,0.7);">-->
<div class="logo">
  <!--<h1 class="logo">oceanic<span class="logo-light">template</span></h1>-->
  <!--<img src="css-html-images/images/logos1.jpg" alt="A4ikka" width="180" height="105"/>-->
  
  <img src="css-html-images/images/logo.png" alt="A4ikka" width="180" height="105"/>
  <!--<h1 class="logo"></h1>-->
  <!--<//s:a href="" cssClass="forgot-password">Forgot Password?<///s:a>--.
  <!--<div class="logo"></div>-->
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
          <s:submit cssClass="minimal" label="Submit" ></s:submit>
          <!--<//s:submit src="css-html-images/images/submit.png"><//s:submit>-->
      </li>
      <!--<li><button class="minimal">Submit</button></li>-->
          
      
      <!--<li><a href="actionForgotPassword">Forgot Password</a></li>-->
      <!--<a href="actionForgotPassword">Forgot Password</a>-->
      </s:form >
      
       
  </ul>
      
  </div>
</div>
        <!--</div>-->
          <div class="below-header">
              <s:a href="" cssClass="forgot-password">Forgot Password?</s:a>
        </div>
    </body>
</html>
