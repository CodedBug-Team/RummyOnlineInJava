<%-- 
    Document   : addcash
    Created on : 26 Jun, 2012, 1:33:33 PM
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
      <div class="wrapper">
    <!--header-->
    <%@include file="../header.jsp" %>
    <%//@include file="../below-header.jsp" %>
    
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

		<h2>Please enter correct contact information.</h2>
		<p><a href="/">you must be above 18 years of age.<br>
                        you must not residence of, or access  the website from Assam or Orrisa, playing cash tournament either from these state is a crime.<br>
                        Address should be correct<br>
                        You must have read, understood and agree to the Terms and Condition of the website.<br>
                    </a></p>
                    
                <s:form action="actionAddpayment">
                <s:textfield name="firstname" value="" id="firstname" size="30" label="First Name" required="true"/>
                <s:textfield name="lastname" value="" id="lastname" size="30" label="Last Name" required="true"/>
                <sj:datepicker id="dob" name="dob" label="Date of Birth"  displayFormat="yy-mm-dd" required="true"/>
                <s:textfield name="address" value="" id="address" size="30" label="Address" required="true"/>
                <s:textfield name="city" value="" id="city" size="30" label="City" required="true"/>
                <s:textfield name="state" value="" id="state" size="30" label="State" required="true"/>
                <s:textfield name="pin" value="" id="pin" size="30" label="Pin" required="true"/>
                <s:textfield name="phone" value="" id="phone" size="30" label="Phone Number" required="true"/>
                <hr>
                <s:textfield name="amount" value="" id="amount" size="30" label="Amount" required="true"/>
                <s:submit value="Proceed" cssClass="minimal"></s:submit>
                </s:form>
<br>	
	</div>

<div class="seperater"><!-- LEAVE DIV EMPTY --></div>
<!--footer-->

        
        <div class="seperater"><!-- LEAVE DIV EMPTY --></div>
        <%@include file="../footer.jsp" %>
      </div>
        </div>
    </body>
</html>
