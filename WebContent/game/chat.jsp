<%-- 
    Document   : chat
    Created on : 12 Aug, 2012, 5:13:51 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>chat</title>
        <!--<link href="chat_css.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="chat_js.js"></script>-->
    </head>
    <body>
        <div id="click_chat">chat</div>
        <div id="content">
			<p id="chatwindow" > </p>		
<!--			<textarea id="chatwindow" rows="19" cols="95" readonly></textarea><br>
-->
			<input id="chatnick" type="text" size="9" maxlength="9" >&nbsp;
			<input id="chatmsg" type="text" size="40" maxlength="80"  onkeyup="keyup(event.keyCode);"> 
			<input type="button" value="add" onclick="submit_msg();" style="cursor:pointer;border:1px solid gray;"><br><br>
			<br>
		</div>
    </body>
</html>
