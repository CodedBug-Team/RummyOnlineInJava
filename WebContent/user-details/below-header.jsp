<%-- 
    Document   : below-header
    Created on : 26 Jun, 2012, 4:52:05 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/main.css" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
    </head>
    <body>

       <!--<div class="footer">-->
       <div class="below-header">
           
<!--<div class="footer-left">-->
    <div class="below-header-left">
        
  <!--<p> All Rights Reserved  - (C) 2009 </p>-->
  <!--<p class="small">Powered by: <a href="http://www.techingenious.com"><b>techingenious</b></a></p>-->
</div>
<!--<div class="footer-right">-->
<div class="below-header-right">
  <ul>
    
     <li>Practice cash:&nbsp;<!--<//s:property value="practice_cash" />-->
         <s:property value="#session.practice_cash" />&nbsp;
         <a href=""><button class="minimal">Refil</button></a>
          &nbsp;&nbsp;&nbsp;| &nbsp;&nbsp;</li>
    <li>Real cash: &nbsp;<!--<//s:property value="real_cash" />-->
        <s:property value="#session.real_cash" />&nbsp;&nbsp;
        <a href=""><button class="cupid-green">Add Cash</button></a> &nbsp;&nbsp;
</li>
  </ul>
  </div>
</div>
    </body>
</html>
