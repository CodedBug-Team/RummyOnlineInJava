<%-- 
    Document   : myslide
    Created on : 19 Jul, 2012, 12:08:24 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div id="toppanel">
	<div id="panel">
		<div class="content clearfix">
			<div class="left">
				<h1>Game Details</h1>
                                Game ID: 
                                Players: 
                                Entry Fee:
                                Prize:
                                
				
			</div>
			<div class="left">
				<!-- Login Form -->

				<form class="clearfix" action="LginValidate.jsp" method="post" onsubmit="return validate(this);">
					<h1>How to Play</h1>
					<label class="grey" for="log">Username:</label>
					<input class="field" type="text" name="name" id="log" value="" size="23" onClick="clearText(this);"/>
					<label class="grey" for="pwd">Password:</label>
					<input class="field" type="password" name="pass" id="pwd" size="23" />
	            	<label class="grey">Enter Username & password correctly.</label>

        			<div class="clear"></div>
					<input type="submit" name="submit" value="Login" class="bt_login" />
					<a class="lost-pwd" href="#">Lost your password?</a>
				</form>
			</div>
			<div class="left right">
				<!-- Register Form -->
				<form action="rgstrsn.jsp" method="post" onsubmit="return validate1(this);">
					<h1>How to Declare?</h1>
                                        <h1>Leave Table?</h1>
					<label class="grey" for="signup">Company Name:</label>

					<input class="field" type="text" name="cmpnynm" id="signup" value="" size="23" onClick="clearText(this);"/>
					<label class="grey" for="email">Email:</label>
					<input class="field" type="text" name="email" id="email" size="23" />
					<label class="grey">Click on button for furthur data.</label>
					<input type="submit" name="submit" value="Register" class="bt_register" />
				</form>
			</div>
		</div>

</div> <!-- /login -->

	<!-- The tab on top -->
	<div class="tab">
		<ul class="login">
			<li class="left">&nbsp;</li>
			<!--<li>Hello</li>
			<li class="sep">|</li>-->
			<li id="toggle">
				<a id="open" class="open" href="#">Expand</a>

				<a id="close" style="display: none;" class="close" href="#">Collapse</a>
			</li>
			<li class="right">&nbsp;</li>
		</ul>
	</div> <!-- / top -->
  </div>
  
    </body>
</html>
