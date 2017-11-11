<%-- 
    Document   : two
    Created on : 14 Jul, 2012, 11:47:50 PM
    Author     : Abhishek
--%>

<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
 <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>JSP Page</title>
    <sj:head/>
<script type="text/javascript">
    
    function getXMLHttpRequest() {
var xmlHttpReq = false;
  // to create XMLHttpRequest object in non-Microsoft browsers
  if (window.XMLHttpRequest) {
    xmlHttpReq = new XMLHttpRequest();
  }
  else if (window.ActiveXObject) {
    try {
      // to create XMLHttpRequest object in later versions
      // of Internet Explorer
      xmlHttpReq = new ActiveXObject("Msxml2.XMLHTTP");
    } 
    catch (exp1) {
      try {
        // to create XMLHttpRequest object in older versions
        // of Internet Explorer
        xmlHttpReq = new ActiveXObject("Microsoft.XMLHTTP");
      } catch (exp2) {
        xmlHttpReq = false;
      }
    }
  }
  return xmlHttpReq;
}
  //document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    //xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
 //xmlHttp.onreadystatechange = showMessage;
 function loadXMLDoc()
{
     var xmlHttpRequest = getXMLHttpRequest();
  xmlHttpRequest.onreadystatechange = getReadyStateHandler(xmlHttpRequest);
  xmlHttpRequest.open("GET", "jama.action", true);
  //xmlHttpRequest.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
  xmlHttpRequest.send(null);

}

function getReadyStateHandler(xmlHttpRequest) {
 
  // an anonymous function returned
  // it listens to the XMLHttpRequest instance
  return function() {
    if (xmlHttpRequest.readyState==4 && xmlHttpRequest.status==200)
        {
        document.getElementById("myDiv").innerHTML = xmlHttpRequest.responseText;
        //document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
     alert("Inside Show Message2&ReadyState4");
                    alert(xmlHttpRequest.responseText);
      } else {
        alert("HTTP error " + xmlHttpRequest.status + ": " + xmlHttpRequest.statusText);
      }
    }
  };


</script>
</head>
<body>
<div id="myDiv"><h2>Let AJAX change this text</h2></div>
<button type="button" onclick="loadXMLDoc()">Change Content</button>
</body>
</html>