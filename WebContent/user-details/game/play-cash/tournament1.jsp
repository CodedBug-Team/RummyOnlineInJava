<%-- 
    Document   : tournament1
    Created on : 22 Jul, 2012, 8:54:18 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
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
popupWindow = window.open(url,'popUpWindow','height=645,width=1024,left=10,top=10,resizable=yes,scrollbars=yes,toolbar=yes,menubar=no,location=no,directories=no,status=yes' )
 }
 </SCRIPT>
 
    </head>
    <body onload="JavaScript:game('');">
        
        sucesss
    </body>
</html>
