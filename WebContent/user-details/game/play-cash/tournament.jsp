<%-- 
    Document   : point-rummy
    Created on : 28 Jun, 2012, 11:28:38 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
<head>
    <sj:head jqueryui="true"/>
    <sj:head/>
    
    <!--<//sx:head/>-->
    <link href="user-details/css/main.css" rel="stylesheet" type="text/css" />
    <link href="user-details/css/table.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cruise Ships, their Tonnage and Status</title>
<style type="text/css">
      
  * { padding: 0; margin: 0; }
  table.cruises { 
    font-family: verdana, arial, helvetica, sans-serif;
    font-size: 11px;
    cellspacing: 0; 
    border-collapse: collapse; 
    width: 590px;    
    }
  table.cruises th, table.cruises td { 
    border-left: 1px solid #999; 
    border-bottom: 1px solid #999; 
    padding: 2px 4px;
    }
  table.cruises th { 
    background: #6b6164;
    color: white;
    font-variant: small-caps;
    }
  table.cruises td { background: #eee; overflow: hidden; }
  
  div.scrollableContainer { 
    position: relative; 
    width: 620px; 
    padding-top: 1.9em; 
    margin: 40px;    
    border: 1px solid #999;
    background: #6b6164;
    }
    
  div.scrollingArea { 
    height: 240px; 
    overflow: auto; 
    }

  table.scrollable thead tr {
    left: -1px; top: 0;
    position: absolute;
    }

  table.cruises .name     div { width: 90px; }
  table.cruises .entryfee div { width: 90px; }
  table.cruises .prize    div { width: 70px;  text-align:center; }
  table.cruises .maxjoined  div { width: 70px;  text-align:center; }
  table.cruises .join   div { width: 60px; }
  table.cruises .starts   div { width: 78px; }
  table.cruises .viewdetails   div { width: 84px; }
  
  table.cruises td.entryfee { background: #ebcb4d; }
  table.cruises td.maxjoined  { background: white; }
  table.cruises td.name     { background: #C7E0C1; }  
  table.cruises td.prize    { background: #B7C3E8; }
  table.cruises td.join    { background: #B7C3E8; }
  table.cruises td.viewdetails    { background: #B7C3E8; }

</style>
 
 
 
 <script type="text/javascript" src="jquery.js"></script>

       <!-- <script type="text/javascript">
      var auto_refresh = setInterval(
        function ()
        {
        $('#load_me').load('welcome-message.jsp').fadeIn("slow");
    }, 5000); // autorefresh the content of the div after

                   //every 10000 milliseconds(10sec)
        </script>-->

    <!--<script type="text/javascript">
     
                   var auto_refresh = setInterval(
        function ()
        {
        $('#load_me').load('myremoteactionone1').fadeIn("slow");
        }, 5000);
        </script>-->
    <SCRIPT type="text/javascript">
    $(document).ready(function() {
  $('a[rel*=external]').click(function(){
       cash_tournament_num1=document.getElementById("cash_tournament_num1").value;
 entryfee=document.getElementById("entryfee").value;
 prize=document.getElementById("prize").value;
 maxjoined=document.getElementById("maxjoined").value;
document.forms['myform'].submit()
    window.open($(this).attr('href'), 'popUpWindow','height=768,width=1024,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes');
    return false; 
  });
});
    </script>
 <SCRIPT type="text/javascript">
 function game(url){
 //var where_to= "Do you really want to go to this page??";
 //alert(where_to);
//popupWindow = window.open(
//actionCashTournamentJoin.action,'popUpWindow','height=700,width=800,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes')
//document.forms["form1"].submit();
 cash_tournament_num1=document.getElementById("cash_tournament_num1").value;
 entryfee=document.getElementById("entryfee").value;
 prize=document.getElementById("prize").value;
 maxjoined=document.getElementById("maxjoined").value;
//document.forms["form1"].submit();
popupWindow = window.open("actionCashTournamentJoin?cash_tournament_num1="+cash_tournament_num1+"&entryfee="+entryfee+"&prize="+prize+"&maxjoined="+maxjoined,'popUpWindow','height=660,width=1024,left=05,top=05,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes' )
 }
 </SCRIPT>
</head>
<body>
    
    <!--<//s:url id="url" action="updatecashtable" />
    <//sx:div theme="ajax"  href="%{url}" loadingText="Loading1..."  updateFreq="5000" autoStart="true" >
     <///sx:div>-->
    <div id="load_me">
    <!--<div class="wrapper1">-->
<div class="scrollableContainer">
  <div class="scrollingArea">
  	<table class="cruises scrollable">
  	  <thead>
  	<tr>
  	    <th class="name"><div>Name</div></th>
  	    <th class="entryfee"><div>Entry Fee</div></th>
            <th class="prize"><div>Prize</div></th>    
            <th class="maxjoined"><div>Max. Joined</div></th>
  	    <th class="starts"><div>Starts</div></th>
            <th class="viewdetails"><div>View Details</div></th>
            <th class="join"><div>Join</div></th>
  	</tr>
  		</thead>
  		<tbody>
                
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament1" /></td>
          <td class="entryfee"><div>25.00</div></td>
          <td class="prize"><div>42.50</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament1}" />
                  <s:hidden name="entryfee" id="entryfee" value="25" />
                  <s:hidden name="prize" id="prize" value="42.50" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                 <a href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal" >&nbsp;&nbsp;Join&nbsp;&nbsp;</a>
                 <!--<a onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal" >&nbsp;&nbsp;Join&nbsp;&nbsp;</a>-->
                  <!--<//s:form action="actionCashTournamentJoin" target="_blank">
                      <//s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament1}" />
                  <//s:hidden name="entryfee" id="entryfee" value="25" />
                  <//s:hidden name="prize" id="prize" value="42.50" />
                  <//s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <//s:submit label="submit"><///s:submit>
                  <///s:form>-->
              </div>
          </td>        
          
          
        </tr>
       
        
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament2" /></td>
          <td class="entryfee"><div>50.00</div></td>
          <td class="prize"><div>85</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament2}"/>
                  <s:hidden name="entryfee" id="entryfee" value="50" />
                  <s:hidden name="prize" id="prize" value="85" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a>
                </div></td>
        </tr>
        
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament3" /></td>
          <td class="entryfee"><div>75.00</div></td>
          <td class="prize"><div>127.50</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
          
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament3}"/>
                  <s:hidden name="entryfee" id="entryfee" value="75" />
                  <s:hidden name="prize" id="prize" value="127.50" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a>
              </div></td>
        </tr>
        
        <tr>
            
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament4" /></td>
          <td class="entryfee"><div>100.00</div></td>
          <td class="prize"><div>170</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
          
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament4}"/>
                  <s:hidden name="entryfee" id="entryfee" value="100" />
                  <s:hidden name="prize" id="prize" value="170" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></div></td> 
        </tr>
        
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament5" /></td>
          <td class="entryfee"><div>200.00</div></td>
          <td class="prize"><div>340</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
          
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament5}"/>
                  <s:hidden name="entryfee" id="entryfee" value="200" />
                  <s:hidden name="prize" id="prize" value="340" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></div></td> 
        </tr>
        
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament6" /></td>
          <td class="entryfee"><div>300.00</div></td>
          <td class="prize"><div>510</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
          
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament6}"/>
                  <s:hidden name="entryfee" id="entryfee" value="300" />
                  <s:hidden name="prize" id="prize" value="510" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a>
              </div>
        </tr>
        
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament7" /></td>
          <td class="entryfee"><div>500.00</div></td>
          <td class="prize"><div>850</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
          
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament7}"/>
                  <s:hidden name="entryfee" id="entryfee" value="500" />
                  <s:hidden name="prize" id="prize" value="850" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></div></td> 
        </tr>
        
        <tr>
            
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament8" /></td>
          <td class="entryfee"><div>750.00</div></td>
          <td class="prize"><div>1275</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
          
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament8}"/>
                  <s:hidden name="entryfee" id="entryfee" value="750" />
                  <s:hidden name="prize" id="prize" value="1275" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></div></td> 
        </tr>
        
        <tr>
            
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament9" /></td>
          <td class="entryfee"><div>1000.00</div></td>
          <td class="prize"><div>1700</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
          
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament9}"/>
                  <s:hidden name="entryfee" id="entryfee" value="1000" />
                  <s:hidden name="prize" id="prize" value="1700" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></div></td> 
        </tr>
        
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament10" /></td>
          <td class="entryfee"><div>1250.00</div></td>
          <td class="prize"><div>2125</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
          
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament10}"/>
                  <s:hidden name="entryfee" id="entryfee" value="1250" />
                  <s:hidden name="prize" id="prize" value="2125" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></div></td> 
        </tr>
        
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament11" /></td>
          <td class="entryfee"><div>1500.00</div></td>
          <td class="prize"><div>2550</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
          
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament11}"/>
                  <s:hidden name="entryfee" id="entryfee" value="1500" />
                  <s:hidden name="prize" id="prize" value="2550" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></div></td> 
        </tr>
        
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament12" /></td>
          <td class="entryfee"><div>1800.00</div></td>
          <td class="prize"><div>3060</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
          
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament12}"/>
                  <s:hidden name="entryfee" id="entryfee" value="1800" />
                  <s:hidden name="prize" id="prize" value="3060" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></div></td> 
        </tr>
        
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament13" /></td>
          <td class="entryfee"><div>2000.00</div></td>
          <td class="prize"><div>3400</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament13}"/>
                  <s:hidden name="entryfee" id="entryfee" value="2000" />
                  <s:hidden name="prize" id="prize" value="3400" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></div></td>
        </tr>
        
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament14" /></td>
          <td class="entryfee"><div>3000.00</div></td>
          <td class="prize"><div>5100</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament14}"/>
                  <s:hidden name="entryfee" id="entryfee" value="3000" />
                  <s:hidden name="prize" id="prize" value="45100" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></div></td> 
        </tr>
        
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament15" /></td>
          <td class="entryfee"><div>4000.00</div></td>
          <td class="prize"><div>6800</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
          
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament15}"/>
                  <s:hidden name="entryfee" id="entryfee" value="4000" />
                  <s:hidden name="prize" id="prize" value="6800" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></div></td>
        </tr>
        
        <tr>
          <td class="name"><div>Rummy</div>
          <s:property value="#session.cashtournament16" /></td>
          <td class="entryfee"><div>5000.00</div></td>
          <td class="prize"><div>8500</div></td>
          <td class="maxjoined"><div> 0/2</div></td>
          <td class="starts"><div>When Full</div></td>
          <td class="viewdetails"><div><a href="actionViewGameDetails" class="minimal" >&nbsp;&nbsp;View Details&nbsp;&nbsp;</a></div></td>
          <td class="join"><div>
                  <s:hidden name="cash_tournament_num1" id="cash_tournament_num1" value="%{#session.cashtournament16}"/>
                  <s:hidden name="entryfee" id="entryfee" value="5000" />
                  <s:hidden name="prize" id="prize" value="8500" />
                  <s:hidden name="maxjoined" id="maxjoined" value="2" />
                  <a  href="loggedin.jsp" onclick="JavaScript:game('actionCashTournamentJoin');" name="file1" class="minimal">&nbsp;&nbsp;Join&nbsp;&nbsp;</a></div></td>
        </tr>
        
            </tbody>
  	</table>
	</div>
</div>
    <!--</div>-->
    </div>
       
</body>
</html>
