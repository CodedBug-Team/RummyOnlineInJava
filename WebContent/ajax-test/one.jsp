<%-- 
    Document   : one
    Created on : 12 Jul, 2012, 3:05:50 PM
    Author     : Abhishek
--%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <sx:head/>
        <sj:head/>
        
        <script type="text/javascript">
      var auto_refresh = setInterval(
        function ()
        {
        $('#load_me').load('welcome-message.jsp').fadeIn("slow");
    }, 5000); // autorefresh the content of the div after

                   //every 10000 milliseconds(10sec)
                   
                   var auto_refresh = setInterval(
        function ()
        {
        $('#load_me').load('myremoteactionone').fadeIn("slow");
    }, 5000);
        </script>
    </head>
    <body>
        auto update
 <s:url id="jamaa" value="jama.action" />
<s:div theme="ajax" href="%{jamaa}" updateFreq="2000" delay="3000"/>

<s:url id="jamaa" value="jama.action" />
<s:div href="%{jamaa}" updateFreq="2000" delay="3000"/>-->

<s:url id="url" action="jama" />
<sx:div theme="ajax"  href="%{url}" loadingText="Loading..."  updateFreq="3000" autoStart="true" >
     </sx:div>


<s:url id="url" action="jama" />
<sx:div theme="ajax"  href="%{url}" loadingText="Loading..."  updateFreq="5000" autoStart="true" >
     </sx:div>


<div id="load_me"> <%@ include file="../welcome-message.jsp" %>

<s:url id="remoteurl1" action="myremoteactionone" />
    <!--<//s:url id="remoteurl2" action="myremoteactiontwo"/>-->
   <!-- <//s:url id="remoteurl3" action="myremoteactionthree"/>-->
   <sj:tabbedpanel id="mytabs2" selectedTab="1" animate="true" collapsible="true" >
        <sj:tab id="tab1" href="%{remoteurl1}" label="Tournament" />
      <!--<//sj:tab id="tab2" href="%{remoteurl2}" label="Tab Two"/>-->
      <!--<//sj:tab id="tab3" href="%{remoteurl3}" label="Tab Three"/>-->
      
      <s:url id="url" action="updatecashtable" />
<sx:div theme="ajax"  href="%{url}" loadingText="Loading1..."  updateFreq="5000" autoStart="true" >
     </sx:div>
      
    </sj:tabbedpanel></div>
    
    </body>
</html>
