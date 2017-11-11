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
<div class="seperater"><!-- LEAVE DIV EMPTY --></div>
<!--<div style="text-align: center; font-size: 0.75em;"><span style="font-size: 0.8em; text-align: center; margin-top: 1.0em; margin-bottom: 1.0em;"><a href="http://freetemplates.dezinehub.com">Template</a> <a href="http://www.maadesigns.co.uk">Design</a></span> downloaded from <a href="http://www.freewebtemplates.com/">free website templates</a>.</div>-->
      
      
      <div id="div1">Div 1</div>
    <s:url id="ajaxTest" value="/AjaxTest.action"/>

    <sj:a id="link1" href="%{ajaxTest}" targets="div1">
      Update Content
    </sj:a>
      
      <a href="hello">hello</a>
      
      <s:a href="genarategame">generate game</s:a>
      

<!--<//s:url id="url" action="jama" />
<//sx:div theme="ajax"  href="%{url}" loadingText="Loading..."  updateFreq="3000" autoStart="true" >
     <///sx:div>-->
 <s:a href="action.action">Login</s:a>
  </body>
</html>