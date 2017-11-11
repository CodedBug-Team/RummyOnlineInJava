<%-- 
    Document   : bottom-main
    Created on : 20 Jun, 2012, 9:30:56 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="main.css" rel="stylesheet" type="text/css" />
        <title>JSP Page</title>
	<!--
	<link rel='stylesheet' href='style.css'>
	<style>
		p { margin: 0 0 15px 0; }
		.sidebar-box { 
			float: left; 
			width: 250px;
			margin: 0 20px 0 0;
		}
		.sidebar-box {
			max-height: 120px;
			position: relative;
			padding: 20px;
			overflow: hidden;
		}
		.sidebar-box .read-more { 
			position: absolute; 
			bottom: 0; left: 0;
			width: 100%; 
			text-align: center; 
			margin: 0; 
			padding: 30px 0 30px 0; 
			
			/* "transparent" only works here because == rgba(0,0,0,0) */ 
			background-image: -moz-linear-gradient(top, transparent, black);
				background-image: -webkit-gradient(linear,left top,left bottom,color-stop(0, transparent),color-stop(1, black));
		}
		.gray {
			background-color: #444;
			background-color: rgb(89,89,89);
		}
		.red {
			background-color: red;
		}
		.red .read-more { 
			/* transparent doesn't work in this context, must use RGBa for both */
			background-image: -moz-linear-gradient(top, rgba(255,0,0,0), rgba(255,0,0,100));
  			background-image: -webkit-gradient(linear,left top,left bottom,color-stop(0, rgba(255,0,0,0)),color-stop(1, rgba(255,0,0,100)));
		}
	</style>
	
	<script src='http://ajax.googleapis.com/ajax/libs/jquery/1.4.4/jquery.min.js'></script>
	<script>
		// DOM Ready
		$(function() {
		
			var $el, $ps, $up, totalHeight;
			
			$(".sidebar-box .button").click(function() {
			
				// IE 7 doesn't even get this far. I didn't feel like dicking with it.
						
				totalHeight = 0
			
				$el = $(this);
				$p  = $el.parent();
				$up = $p.parent();
				$ps = $up.find("p:not('.read-more')");
				
				// measure how tall inside should be by adding together heights of all inside paragraphs (except read-more paragraph)
				$ps.each(function() {
					totalHeight += $(this).outerHeight();
					// FAIL totalHeight += $(this).css("margin-bottom");
				});
							
				$up
					.css({
						// Set height to prevent instant jumpdown when max height is removed
						"height": $up.height(),
						"max-height": 9999
					})
					.animate({
						"height": totalHeight
					});
				
				// fade out read-more
				$p.fadeOut();
				
				// prevent jump-down
				return false;
					
			});
		
		});
	</script>-->

    </head>
    <body>

  	<div id="three-columns">
            
		<div id="column1">
			<h2>Rummy</h2>
			<p>Rummy is a popular card game in India and is not able for game play based on matching similar playing cards.<br>
                        There are various type of Rummy, but we offer you the most popular version of 13 cards and with interesting twists to the game. Expect more from us. If you are old hand at Rummy and prefer a more serious game.</p>
			<!--<p><a href="#" class="link-style">Read More</a></p>-->
		</div>
		<div id="column2">
			<h2>Rummy</h2>
			<p>Rummy is a popular card game in India and is not able for game play based on matching similar playing cards.<br>
                        There are various type of Rummy, but we offer you the most popular version of 13 cards and with interesting twists to the game. Expect more from us. If you are old hand at Rummy and prefer a more serious game.</p>
			<!--<p><a href="#" class="link-style">Read More</a></p>-->
		</div>
		<div id="column3">
			<h2>Rummy</h2>
			<p>Rummy is a popular card game in India and is not able for game play based on matching similar playing cards.<br>
                        There are various type of Rummy, but we offer you the most popular version of 13 cards and with interesting twists to the game. Expect more from us. If you are old hand at Rummy and prefer a more serious game.</p>
			<!--<p><a href="#" class="link-style">Read More</a></p>-->
		</div>
	</div>
        
       <!-- <div id="page-wrap">
	
		<div class="sidebar-box black">
			<p>Malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
			<p class="read-more"><a href="#" class="button">Read More</a></p>
		</div>
		<div class="sidebar-box gray">
			<p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae</p> <p>ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo. Quisque sit amet est et sapien ullamcorper pharetra. Vestibulum erat wisi, condimentum sed, commodo vitae, ornare sit amet, wisi. Aenean fermentum, elit eget tincidunt condimentum, eros ipsum rutrum orci, sagittis tempus lacus enim ac dui. Donec non enim in turpis pulvinar facilisis. Ut felis. Praesent dapibus, neque id cursus faucibus, tortor neque egestas augue, eu vulputate magna eros eu erat. Aliquam erat volutpat. Nam dui mi, tincidunt quis, accumsan porttitor, facilisis luctus, metus</p>				
			<p class="read-more"><a href="#" class="button">Read More</a></p>
		</div>
		<div class="sidebar-box red">
			<p>Et netus et malesuada fames ac turpis egestas. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Vestibulum tortor quam, feugiat vitae, ultricies eget, tempor sit amet, ante. Donec eu libero sit amet quam egestas semper. Aenean ultricies mi vitae est. Mauris placerat eleifend leo.</p>
			<p class="read-more"><a href="#" class="button">Read More</a></p>
		</div>

	</div>
-->
    </body>
</html>
