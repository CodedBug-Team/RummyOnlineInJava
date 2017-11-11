<%-- 
    Document   : index
    Created on : 30 Jun, 2012, 3:10:19 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>A4iKKA</title>
     <sj:head/>
     <sx:head/>
     <link href="css-html-images/main.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <div class="all">
    <!--header-->
    <%@include file="css-html-images/header.jsp" %>
        <center>You are now logout to play Login again</center>
    <div class="wrapper">
<!--middle-left-->
<%@include file="css-html-images/middle-left.jsp" %>
<!--middle-right-->
<%@include file="css-html-images/middle-right.jsp" %>
<!--bottom-main-->
         </div>
<div class="below-wrapper">
<%@include file="css-html-images/bottom-main.jsp" %>
</div>
<!--footer-->
<%@include file="css-html-images/footer.jsp" %>

        </div>

  </body>
</html>
