<%-- 
    Document   : play-free
    Created on : 26 Jun, 2012, 7:47:31 PM
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
     <sx:head/>
     <link href="user-details/css/main.css" rel="stylesheet" type="text/css" />
     <link href="user-details/chat/style.css" rel="stylesheet" type="text/css" />
     <link href="user-details/table/style.css" rel="stylesheet" type="text/css" />
  </head>
  <body>
    
      <div class="wrapper">
    <!--header-->
    <%@include file="../header.jsp" %>
    <%//@include file="../below-header.jsp" %>
<!--middle-left-->
<%//@include file="../css-html-images/middle-left.jsp" %>
<!--middle-right-->
<%//@include file="../css-html-images/middle-right.jsp" %>
<!--bottom-main-->
<%//@include file="../css-html-images/bottom-main.jsp" %>

<s:url id="remoteurl1" action="myremoteactionone"/>
    <!--<//s:url id="remoteurl2" action="myremoteactiontwo"/>
    <//s:url id="remoteurl3" action="myremoteactionthree"/>-->
    <sj:tabbedpanel id="mytabs2" selectedTab="1" >
      <sj:tab id="tab1" href="%{remoteurl1}" label="Tab One" />
      <!--<//sj:tab id="tab2" href="%{remoteurl2}" label="Tab Two"/>
      <//sj:tab id="tab3" href="%{remoteurl3}" label="Tab Three"/>-->
      <s:url id="url" action="updatecashtable" />
<sx:div theme="ajax"  href="%{url}" loadingText="Loading1..."  updateFreq="5000" autoStart="true" >
     </sx:div>
    </sj:tabbedpanel>

      
      <!--<//sj:tabbedPane id="projectTab" selected="1">
            <//sj:tab src="updatecashtable.action">Overview<///sj:tab>
            <!--<//sj:tab src="tabbedPaneDownloads.action">Downloads<///sj:tab>
            <//sj:tab src="tabbedPaneWiki.action">Wiki<///sj:tab>
         <///sj:tabbedPane>-->
<div class="seperater"><!-- LEAVE DIV EMPTY --></div>
<!--footer-->
<br>

<%//@include file="../table/table2.jsp" %>
<%//@include file="../chat/chat.jsp" %>
<a href="accessSession">access session request</a>

<%@include file="../footer.jsp" %>
</div>

  </body>
</html>
