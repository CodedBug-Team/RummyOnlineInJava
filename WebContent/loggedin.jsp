<%-- 
    Document   : login
    Created on : 23 Jun, 2012, 1:48:40 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>A4iKKA</title>
     <sj:head/>
     <link href="user-details/css/main.css" rel="stylesheet" type="text/css" />
     <!--<link href="css-html-images/main.css" rel="stylesheet" type="text/css" />-->
     
     <link href="user-details/chat/style.css" rel="stylesheet" type="text/css" />
     <!--<link href="user-details/table/style.css" rel="stylesheet" type="text/css" />-->
     
     <link href="user-details/css/showMessage.css" rel="stylesheet" type="text/css" />
     <script type="text/javascript" src="user-details/js_can_deleted/jquery.showMessage.min.js"></script>
     
  </head>
 
  <body>
          <div class="all">
    <!--header-->
    <%@include file="user-details/header.jsp" %>
    <!--<//%@include file="user-details/below-header.jsp" %>-->
       
    <div class="wrapper">
        
            <div id="sidebar">
                <h2>Column 2</h2>
			<a href="/">Account Overview</a><br>
			<a href="/">Change Password</a><br>
			<a href="/">Add Cash</a><br>
			<a href="/">Withdraw cash</a><br>
			<a href="/">General Information</a>

                <div class="scroll">
                
INFO: At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
25 Jul, 2012 10:26:20 AM org.apache.jasper.compiler.TldLocationsCache tldScanJar
INFO: At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.
25 Jul, 2012 10:26:20 AM org.apache.jasper.compiler.TldLocationsCache tldScanJar
INFO: At least one JAR was scanned for TLDs yet contained no TLDs. Enable debug logging for this logger for a complete list of JARs that were scanned but no TLDs were found in them. Skipping unneeded JARs during scanning can improve startup time and JSP compilation time.

               </div> 
            </div>
        <div id="sidebar-body">
<!--body-->
<!--body start -->
<br><br><br><br><br><br><br>
<div id="game-option">
<!--left panel start -->
<div id="left">
<!--left1 start -->
<div id="left1">
<p class="pic1"></p>
<p class="boxTxt1"><a href="actionPlayfree"><span>Play For Free</span></a>
    <b>text for play for free.</b></p>
<br class="spacer" />
</div>
<!--left1 end -->
<!--left2 start -->
<div id="left2">
<p class="pic2"></p>
<p class="boxTxt2"><a href="actionPlaycash"><span>Play For Cash</span></a>
    <b>text for play for cash</b></p>
<br class="spacer" />
</div>
<!--left2 end -->
<br class="spacer" />
</div>
</div>
<!--left panel end -->
</div>
            </div>
<!--body end-->
<div class="seperater"><!-- LEAVE DIV EMPTY --></div>
<!--footer-->

<%//@include file="table/table2.jsp" %>
<%//@include file="chat/chat.jsp" %>
<a href="accessSession">access session request</a>
<%@include file="user-details/footer.jsp" %>

      </div>
<!--</div>-->
<!--<div style="text-align: center; font-size: 0.75em;"><span style="font-size: 0.8em; text-align: center; margin-top: 1.0em; margin-bottom: 1.0em;"><a href="http://freetemplates.dezinehub.com">Template</a> <a href="http://www.maadesigns.co.uk">Design</a></span> downloaded from <a href="http://www.freewebtemplates.com/">free website templates</a>.</div>-->

<!--<a href="javascript:void(0);" id="clickMe" class="btn btn-primary" title="Click Me">Click Me</a>-->
  </body>
</html>
