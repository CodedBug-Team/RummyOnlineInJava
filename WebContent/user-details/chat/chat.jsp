<%-- 
    Document   : chat
    Created on : 25 Jun, 2012, 3:59:10 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <title>Chat - Customer Module</title>
<link type="text/css" rel="stylesheet" href="style.css" />
</head>

<div id="wrapper">
	<div id="menu">
		<p class="welcome">Welcome, <b></b></p>
		<!--<p class="logout"><a id="exit" href="#">Exit Chat</a></p>-->
		<div style="clear:both"></div>
	</div>

	<div id="chatbox"></div>

	<form name="message" action="">
		<input name="usermsg" type="text" id="usermsg" size="63" />
                <input name="submitmsg" type="submit"  id="submitmsg" value="Send" />
	</form>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
<script type="text/javascript">
// jQuery Document
$(document).ready(function(){

});
</script>
</body>
</html>