<%-- 
    Document   : myaccount
    Created on : 26 Jun, 2012, 1:34:08 PM
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
     <link href="user-details/chat/style.css" rel="stylesheet" type="text/css" />
     <link href="user-details/table/style.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
      <div class="all">
    <%@include file="../header.jsp" %>   
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
		<h2>Column 1</h2>
		<p><a href="/">456 Berea Street Home</a></p>
		<p><a href="/lab/developing_with_web_standards/csslayout/2-col/">Simple 2 column CSS layout</a></p>
		<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Mauris vel magna. Mauris risus nunc, tristique varius, gravida in, lacinia vel, elit. Nam ornare, felis non faucibus molestie, nulla augue adipiscing mauris, a nonummy diam ligula ut risus. Praesent varius. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus.</p>
		<p>Nulla a lacus. Nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Fusce pulvinar lobortis purus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec semper ipsum et urna. Ut consequat neque vitae felis. Suspendisse dapibus, magna quis pulvinar laoreet, dolor neque lacinia arcu, et luctus mi erat vestibulum sem. Mauris faucibus iaculis lacus. Aliquam nec ante in quam sollicitudin congue. Quisque congue egestas elit. Quisque viverra. Donec feugiat elementum est. Etiam vel lorem.</p><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
	</div>
</div>

<div class="seperater"><!-- LEAVE DIV EMPTY --></div>
<!--footer-->


<%//@include file="../table/table2.jsp" %>
<%//@include file="../chat/chat.jsp" %>
<a href="accessSession">access session request</a>

<%@include file="../footer.jsp" %>

</div>
  </body>
</html>
