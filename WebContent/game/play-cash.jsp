<%-- 
    Document   : play-cash
    Created on : 26 Jun, 2012, 7:47:52 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>A4iKKA</title>
     <sj:head/>
     <sj:head compressed="false"/>
     <!--<//sx:head/>-->
     <link href="user-details/css/main.css" rel="stylesheet" type="text/css" />
     <link href="user-details/chat/style.css" rel="stylesheet" type="text/css" />
     <link href="user-details/table/style.css" rel="stylesheet" type="text/css" />
     
     
       <!--<script type="text/javascript">
     
                   var auto_refresh = setInterval(
        function ()
        {
        $('#load_me').load('myremoteactionone1').fadeIn("slow");
        }, 3000);
        </script>-->
     
  </head>
  <body>
    
     <div class="all">
      <div class="wrapper" >
          <div class="reduce"></div>
    <!--header-->
    <%@include file="../user-details/header.jsp" %>
    <%//@include file="../below-header.jsp" %>
    

<div id="sidebar" >
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
<!--<div class="main-table">-->
<div id="sidebar-body">
<div class="main-left-table">
    
    <!--<//sj:div id="load_me">-->
    <s:url id="remoteurl1" action="myremoteactionone" />
    
    <!--<//s:url id="remoteurl2" action="myremoteactiontwo"/>-->
   <!-- <//s:url id="remoteurl3" action="myremoteactionthree"/>-->
   <sj:div delay="200" updateFreq="3000" href="myremoteactionone1" >
   <sj:tabbedpanel id="mytabs2" selectedTab="1" collapsible="ture" >
       <sj:tab id="tab1" href="%{remoteurl1}" label="Cash Tournament" />
      <!--<//sj:tab id="tab2" href="%{remoteurl2}" label="Tab Two"/>-->
      <!--<//sj:tab id="tab3" href="%{remoteurl3}" label="Tab Three"/>-->
      
      <!--<//s:url id="url" action="updatecashtable" />
<//sx:div theme="ajax"  href="%{url}" loadingText="Loading1..."  updateFreq="5000" autoStart="true" >
     <///sx:div>-->
    </sj:tabbedpanel>
      </sj:div>
    <!--<///sj:div>-->
</div>
    
    <div class="seperater"><!-- LEAVE DIV EMPTY --></div>
</div>
<div class="seperater"><!-- LEAVE DIV EMPTY --></div>
        <%@include file="../user-details/footer.jsp" %>
      </div>
        </div>
    </body>
</html>