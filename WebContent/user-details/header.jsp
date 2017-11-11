<%-- 
    Document   : header
    Created on : 23 Jun, 2012, 6:38:27 PM
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
<div class="logo">
     <img src="css-html-images/images/logo.png" alt="A4ikka" width="180" height="105"/>
  <!--<h1 class="logo">
      it show the loggedin person name
      <//s:property value="#session.username" /></h1>-->
</div>
           <div id="top-nav">
  <ul>
      
      <li>
          Welcome&nbsp;&nbsp;&nbsp;  <s:property value="#session.username" />&nbsp;&nbsp;&nbsp;&nbsp;
      </li>
      
      <li>
        
      </li>
           </ul>
  
      
  </div>
<div class="navigation">
  <ul>
      <!--<li> <a href="index.jsp" class="minimal"> &nbsp;Home </a></li>-->
    <li> <a href="loggedin.jsp" class="minimal"> &nbsp;Tournaments </a></li>
    <li> <a href="actionAddcash" class="minimal"> &nbsp;Add Cash </a></li>
    <li> <a href="actionMyaccount" class="minimal"> &nbsp;My Account </a></li>
    <li> <a href="actionBringfriend" class="minimal"> &nbsp;Invite a Friend </a></li>
    <li> <a href="actionLogout" class="minimal"> &nbsp;Logout &nbsp;</a></li>
  </ul>
  </div>

</div>
<div class="below-header">
           <div class="below-header-left">
</div>

<div class="below-header-right">
  <ul>
    
     <li>Practice cash:&nbsp;
         <s:property value="#session.practice_cash" />&nbsp;
         <a href=""><button class="minimal">Refil</button></a>
          &nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;</li>
    <li>Real cash: &nbsp;
        <s:property value="#session.real_cash" />&nbsp;&nbsp;
        <a href=""><button class="minimal">Add Cash</button></a> &nbsp;&nbsp;
</li>
  </ul>
  </div>
        </div>
    </body>
</html>