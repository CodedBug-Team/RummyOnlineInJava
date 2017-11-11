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
        <sj:head jqueryui="true"/>
    <sj:head/>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- stylesheets -->
<!--<link href="../../css/main.css" rel="stylesheet" type="text/css" />-->
  	<link rel="stylesheet" href="user-details/game/play-cash/css/style.css" type="text/css" media="screen" />
  	<link rel="stylesheet" href="user-details/game/play-cash/css/slide.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="user-details/game/play-cash/css/myslide.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="user-details/game/play-cash/css/main.css" type="text/css" media="screen" />
<link rel="stylesheet" href="user-details/game/play-cash/css/card.css" type="text/css" media="screen" />
  	<!-- PNG FIX for IE6 -->
  	<!-- http://24ways.org/2007/supersleight-transparent-png-in-ie6 -->
	<!--[if lte IE 6]>
		<script type="text/javascript" src="js/pngfix/supersleight-min.js"></script>
	<![endif]-->

    <!-- jQuery - the core -->
	<script src="user-details/game/play-cash/js/jquery-1.3.2.min.js" type="text/javascript"></script>
	<!-- Sliding effect -->
	<script src="user-details/game/play-cash/js/slide.js" type="text/javascript"></script>
      <script src="user-details/game/play-cash/js/myslide.js" type="text/javascript"></script>

<script type="text/javascript">
$.subscribe('ondrop', function(event,data) {
        $(event.originalEvent.ui.droppable).addClass('ui-state-highlight').find('p').html($(event.originalEvent.ui.draggable).attr('id')+' dropped!');
        $(event.originalEvent.ui.draggable).find('p').html('I was dragged!');
});
</script>
<style>
.sortable {
border:1px solid #000;
height:20px;
margin:5px;
padding:10px;
text-align: center;
}
</style>

<title>GAME</title>
    </head>
    <body>
       
        <!--<div class="draganddrop" style="width: 100%; height: 250px;">
        <//sj:div id="draggablenonvalid" draggable="true" cssClass="noaccept ui-widget-content ui-corner-all" cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
                I'm draggable but can't be dropped
        <///sj:div>

        <//sj:div id="draggable" draggable="true" draggableHandle="h3" draggableRevert="invalid" cssClass="accept ui-widget-content ui-corner-all" cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
                <h3 class="ui-widget-header">Drag me to my target</h3>
                <p></p>
        <///sj:div>

        <//s:url id="urlecho" action="echo"><//s:param name="echo">I'm a remote div, drag me!<///s:param><///s:url>
        <//sj:div href="%{urlecho}" id="draggableremote"  draggable="true" indicator="indicator" cssClass="accept ui-widget-content ui-corner-all" cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;" >
                <img id="indicator" src="../images/indicator.gif" alt="Loading..." style="display:none"/>
        <///sj:div>

        <//sj:div id="droptarget" droppable="true" droppableOnDropTopics="ondrop" droppableActiveClass="ui-state-hover" droppableHoverClass="ui-state-active" droppableAccept=".accept" cssClass="ui-widget-content ui-corner-all" cssStyle="width: 220px; height: 220px; padding: 0.5em; float: left; margin: 10px;">
                <p>Drop here</p>
        <///sj:div>
</div>-->
        

  <!--<h1 class="logo">oceanic<span class="logo-light">template</span></h1>-->
  <!--<img src="user-details/images/rummy_game_bg.jpg" alt="A4ikka" width="1200" height="630"/>-->
  <%//@include file="myslide.jsp" %>
  
  
  <!--<img src="user-details/game/play-cash/images/rummy_game_bg_image.jpg" alt="A4ikka" width="1200" height="630"/>-->
  
 <!-- <div id="loading_div" style="background-color: #0000FF" >
    Loading, please wait...
</div>
<div id="data_div"><img src="http://dummyimage.com/400x400">-->
   <!-- hello
</div>-->
  
      <div class="wrapper">
          
         <br><br><br><br>
         <div class="header">
  <div class="playertwo">
      player2
 
  </div></div>
         <br><br><br><br><br><br><br><br><br><br><br><br>
         
         <div id="three-columns" >
         <div class="img">
 <!--<a target="_blank" href="klematis_big.htm"></a>-->
     <img src="user-details/game/play-cash/images/card/2c.gif" alt="Klematis" width="73" height="97" />
 <!--<div class="desc">Add a description of the image here</div>-->
</div>
<div class="img">
 <!--<a target="_blank" href="klematis2_big.htm"></a>-->
 <img src="user-details/game/play-cash/images/card/2d.gif" alt="Klematis" width="73" height="97" />
 <!--<div class="desc">Add a description of the image here</div>-->
</div>
<div class="img">
 <!--<a target="_blank" href="klematis3_big.htm"></a>-->
     <img src="user-details/game/play-cash/images/card/2h.gif" alt="Klematis" width="73" height="97" />
 <!--<div class="desc">Add a description of the image here</div>-->
</div>
             </div>
         
         
          <div class="footer">
   <div class="playerone">
      player1
  </div>
      </div>
      </div>  
   
   <div class="chat" id="chat"><img src="images/chatbox_close.png" width="276" height="27" alt="chat" /></div>
<div class="main">
  <div class="playeron">
    <div class="photo"></div>
    <div class="texton">Player On<br />
      1096
    </div>
  </div>
  <div class="timer">45</div>
  <div align="right"></div>
  <div class="open-desk">Open Desk</div>
  <div class="playeroff">
    <div class="photooff"></div>
    <div class="textoff">Player Off<br />
    1096 </div>
  </div><br style="clear:both" />
</div>
   
       
<div class="draganddrop" style="width: 100%; height: 250px;">
        <sj:div id="draggablenonvalid" draggable="true" cssClass="noaccept ui-widget-content ui-corner-all" cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
                I'm draggable but can't be dropped
        </sj:div>

        <sj:div id="draggable" draggable="true" draggableHandle="h3" draggableRevert="invalid" cssClass="accept ui-widget-content ui-corner-all" cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;">
                <h3 class="ui-widget-header">Drag me to my target</h3>
                <p></p>
        </sj:div>

        <s:url var="urlecho" action="echo"><s:param name="echo">I'm a remote div, drag me!</s:param></s:url>
        <sj:div href="%{urlecho}" id="draggableremote"  draggable="true" indicator="indicator" cssClass="accept ui-widget-content ui-corner-all" cssStyle="width: 100px; height: 100px; padding: 0.5em; float: left; margin: 10px 10px 10px 0;" >
                <img id="indicator" src="images/indicator.gif" alt="Loading..." style="display:none"/>
        </sj:div>

        <sj:div id="droptarget" droppable="true" droppableOnDropTopics="ondrop" droppableActiveClass="ui-state-hover" droppableHoverClass="ui-state-active" droppableAccept=".accept" cssClass="ui-widget-content ui-corner-all" cssStyle="width: 220px; height: 220px; padding: 0.5em; float: left; margin: 10px;">
                <p>Drop here</p>
        </sj:div>
</div>
 <sj:div id="sortable" sortable="true" sortableOpacity="0.8" sortablePlaceholder="ui-state-highlight" sortableForcePlaceholderSize="true" cssStyle="width: 300px;">
        <div id="one" class="sortable ui-widget-content ui-corner-all">One</div>
        <div id="two" class="sortable ui-widget-content ui-corner-all">Two</div>
        <div id="three" class="sortable ui-widget-content ui-corner-all">Three</div>
        <div id="four" class="sortable ui-widget-content ui-corner-all">Four</div>
        <div id="five" class="sortable ui-widget-content ui-corner-all">Five</div>
        <div id="six" class="sortable ui-widget-content ui-corner-all">Six</div>
        <div id="seven" class="sortable ui-widget-content ui-corner-all">Seven</div>
    </sj:div>
    </body>
</html>
