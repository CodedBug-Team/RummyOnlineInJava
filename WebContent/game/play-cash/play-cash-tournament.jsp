<%-- 
    Document   : play-cash-game
    Created on : 29 Jun, 2012, 11:36:19 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html>
    <head>
       <sj:head jqueryui="true" />
    <sj:head/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- stylesheets -->
<!--<link href="../../css/main.css" rel="stylesheet" type="text/css" />-->
  	<!--<link rel="stylesheet" href="user-details/game/play-cash/css/style.css" type="text/css" media="screen" />-->
        <link rel="stylesheet" href="game/css/main.css" type="text/css" media="screen" />
  	<link rel="stylesheet" href="game/css/slide.css" type="text/css" media="screen" />
        <!--<link rel="stylesheet" href="game/css/chat_css.css"  type="text/css"  media="screen"/>-->
        <link rel="stylesheet" href="game/css/myslide.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="game/css/card.css" type="text/css" media="screen" />
        
  	<!-- PNG FIX for IE6 -->
  	<!-- http://24ways.org/2007/supersleight-transparent-png-in-ie6 -->
	<!--[if lte IE 6]>
		<script type="text/javascript" src="js/pngfix/supersleight-min.js"></script>
	<![endif]-->

    <!-- jQuery - the core -->
	<script src="game/js/jquery-1.3.2.min.js" type="text/javascript"></script>
        <script src="game/js/jquery-1.4.2.js" type="text/javascript"></script>
        <script src="game/js/jquery.ui.core.js" type="text/javascript"></script>
        <script src="game/js/jquery.ui.widget.js" type="text/javascript"></script>
        <script src="game/js/jquery.ui.mouse.js" type="text/javascript"></script>
        <script src="game/js/jquery.ui.draggable.js" type="text/javascript"></script>
        <script src="game/js/jquery.ui.sortable.js" type="text/javascript"></script>
      <!-- <script src="js/jquery-1.4.2.js" type="text/javascript"></script>
        <script src="js/jquery.ui.core.js" type="text/javascript"></script>
        <script src="js/jquery.ui.widget.js" type="text/javascript"></script>
        <script src="js/jquery.ui.mouse.js" type="text/javascript"></script>
        <script src="js/jquery.ui.draggable.js" type="text/javascript"></script>
        <script src="js/jquery.ui.sortable.js" type="text/javascript"></script>-->
	<!-- Sliding effect -->

	<script src="game/js/slide.js" type="text/javascript"></script>
        <script src="game/js/myslide.js" type="text/javascript"></script>
        <script type="text/javascript" src="game/js/chat_js/chat_js.js"></script>
      
<script type="text/javascript">
	$(function() {
		$("#sortable").sortable({
			revert: true
		});
		$("#draggable").draggable({
			connectToSortable: '#sortable',
			helper: 'clone',
			revert: 'invalid'
		});
		$("ul, li").disableSelection();
	});
	</script>
<style type="text/css">
	.demo ul { list-style-type: none; margin: 0; padding: 0; margin-bottom: 10px; }
	.demo li { margin: 5px; padding: 5px; width: 150px; }
	</style>
      
<script type="text/javascript">
$.subscribe('ondrop', function(event,data) {
        $(event.originalEvent.ui.droppable).addClass('ui-state-highlight').find('p').html($(event.originalEvent.ui.draggable).attr('id')+' dropped!');
        $(event.originalEvent.ui.draggable).find('p').html('I was dragged!');
});
</script>

<title>GAME</title>
<script>document.onkeydown = function() {    
    switch (event.keyCode) { 
        case 116 : //F5 button
            event.returnValue = false;
            event.keyCode = 0;
            confirm("you will lose your game if refresh\n\
do you realy want to refresh?");
            return false; 
        case 82 : //R button
            if (event.ctrlKey) { 
                event.returnValue = false; 
                event.keyCode = 0;  
                confirm("you will lose your game if refresh\n\
do you realy want to refresh?");
                return false;
            }
    }
}</script>


<style>
	#sortable { list-style-type: none; margin: 0; padding: 0; position: relative; top: 300px; float: left; left: 70px;}
#sortable li { margin: 0px 0px 0px 0; padding: 0px; float: left; width: 30px; height: 90px; font-size: 4em; text-align: center; }
	</style>
	<script>
	$(function() {
		$( "#sortable" ).sortable();
		$( "#sortable" ).disableSelection();
	});
	</script>

        
<script type="text/javascript">
$(document).ready(function()
{
  //hide the all of the element with class msg_body
  $("#content").hide();
  //toggle the componenet with class msg_body
  $("#click_chat").click(function()
  {
    $(this).next("#content").slideToggle(600);
  });
});
</script>

    </head>
    <body onkeydown="return showKeyCode(event)">
        
  <%@include file="../myslide.jsp" %>
<!--<div class="logo">
     <img src="css-html-images/images/logo.png" alt="A4ikka" width="180" height="105"/>
</div>-->
<!--<div class="chat" id="chat"><img src="images/chatbox_close.png" width="276" height="27" alt="chat" /></div>-->

<div class="main">
  <div class="playeron">
    <div class="photo"></div>
    <div class="texton">Player On<br />
      1096
    </div>
  </div>
  <div class="timer">45</div>
  <!--<div align="right"></div>-->
  <div class="close-deck">Close Deck</div>
  <div class="open-deck">Open Deck</div>
  <div class="finishslot">finishslot</div>
    
  <ul id="sortable">
	<li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-10-75.png" alt="A4ikka" width="60" height="90"/></li>
	<li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-9-75.png" alt="A4ikka" width="60" height="90"/></li>
	<li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-8-75.png" alt="A4ikka" width="60" height="90"/></li>
	<li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-7-75.png" alt="A4ikka" width="60" height="90"/></li>
	<li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-6-75.png" alt="A4ikka" width="60" height="90"/></li>
	<li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-5-75.png" alt="A4ikka" width="60" height="90"/></li>
	<li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-4-75.png" alt="A4ikka" width="60" height="90"/></li>
	<li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-3-75.png" alt="A4ikka" width="60" height="90"/></li>
	<li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-j-75.png" alt="A4ikka" width="60" height="90"/></li>
	<li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-k-75.png" alt="A4ikka" width="60" height="90"/></li>
	<li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-q-75.png" alt="A4ikka" width="60" height="90"/></li>
	<li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-10-75.png" alt="A4ikka" width="60" height="90"/></li>
        <li class="ui-state-default"><img src="user-details/game/play-cash/images/card/clubs-10-75.png" alt="A4ikka" width="60" height="90"/></li>
</ul>

  <div class="playeroff">
    <div class="photooff"></div>
    <div class="textoff">Player Off<br />
    1096 </div>
  </div><br style="clear:both" />
  <div id="chat_place">
<%@include file="../chat.jsp" %>
</div>
</div>
<%//@include file="../myslide.jsp" %>

<!--<div class="chat" id="chat"><img src="images/chatbox_close.png" width="276" height="27" alt="chat" /></div>-->
    </body>
</html>
