<%-- 
    Document   : contact-us
    Created on : 23 Jun, 2012, 12:37:25 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css-html-images/main.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css-html-images/screen.css" media="screen" />

        <title>Contact Us</title>
    </head>
    <body>
        <div class="wrapper">
    <!--header-->
    <%@include file="../css-html-images/header.jsp" %>
<!--middle-left-->
<%//@include file="../css-html-images/middle-left.jsp" %>
<!--middle-right-->
<%//@include file="../css-html-images/middle-right.jsp" %>
<!--bottom-main-->
<%//@include file="../css-html-images/bottom-main.jsp" %>

        <div id="container">

		<!--<h1>Contact Us</h1>-->
                <h2>Contact Us</h2>
		
		<p></p>					
							
		<h2></h2>
					
		<form id="form1" action="contactus" method="post">	
		
			<fieldset><legend>Contact form</legend>
				<p class="first">
					<!--<label for="name">Name</label>-->
					<!--<input type="text" name="name" id="name" size="30" />-->
    <s:textfield name="name" size="30" maxlength="45" value="" id="name" label="Name" required="true"/>
				</p>
				<p>
					<!--<label for="email">Email</label>
					<input type="text" name="email" id="email" size="30" />-->
    <s:textfield name="email" size="30" maxlength="45" value="" id="email" label="Email ID" required="true"/>
				</p>
				<!--<p>
					<label for="web">Website</label>
					<input type="text" name="web" id="web" size="30" />
				</p>-->			
			</fieldset>
			<fieldset>																			
				<p>
					<!--<label for="message">Message</label>
					<textarea name="message" id="message" cols="30" rows="10"></textarea>-->
    <s:textarea name="message" cols="30" rows="10" label="Message" id="message" required="true"></s:textarea>
				</p>								
			</fieldset>

			<p class="submit"><button type="submit">Send</button></p>		
						
		</form>	
</div>

<div class="seperater"><!-- LEAVE DIV EMPTY --></div>
<!--footer-->
<%@include file="../css-html-images/footer.jsp" %>
</div>
    </body>
</html>
