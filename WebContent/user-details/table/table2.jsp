<%-- 
    Document   : table2
    Created on : 26 Jun, 2012, 4:20:39 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cruise Ships, their Tonnage and Status</title>
<style type="text/css">
  * { padding: 0; margin: 0; }
  table.cruises { 
    font-family: verdana, arial, helvetica, sans-serif;
    font-size: 11px;
    cellspacing: 0; 
    border-collapse: collapse; 
    width: 535px;    
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
    width: 592px; 
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

  table.cruises .name     div { width: 108px; }
  table.cruises .operator div { width: 126px; }
  table.cruises .began    div { width: 76px;  text-align:center; }
  table.cruises .tonnage  div { width: 60px;  text-align:center; }
  table.cruises .status   div { width: 160px; }
  
  table.cruises td.operator { background: #ebcb4d; }
  table.cruises td.tonnage  { background: white; }
  table.cruises td.name     { background: #C7E0C1; }  
  table.cruises td.began    { background: #B7C3E8; }

</style>
</head>
<body>

<div class="scrollableContainer">
  <div class="scrollingArea">
  	<table class="cruises scrollable">
  	  <thead>
  			<tr>
  	       <th class="name"><div>Name</div></th>
  	      <th class="operator"><div>Operator</div></th>
  	      <th class="began"><div>Began operation</div></th>
  	      <th class="tonnage"><div>Tonnage</div></th>
  	      <th class="status"><div>Status</div></th>
  			</tr>
  		</thead>
  		<tbody>
  		  		  <tr>
          <td class="name"><div>Seabourne Sun</div></td>
          <td class="operator"><div>Seabourn Cruise Line</div></td>
          <td class="began"><div>1988</div></td>
          <td class="tonnage"><div></div></td>
          <td class="status"><div >Ended service in 2002, currently operating as Prinsendam</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Adventures of the Seas</div></td>
          <td class="operator"><div>Royal Caribbean International</div></td>
          <td class="began"><div>2001</div></td>
          <td class="tonnage"><div>138,000</div></td>
          <td class="status"><div >Operating</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Oceanic Independence</div></td>
          <td class="operator"><div>American Hawaiian Cruises / American Global Line</div></td>
          <td class="began"><div>1974</div></td>
          <td class="tonnage"><div>23,719</div></td>
          <td class="status"><div >Named formerly (1951-1974) and subsequently renamed (1982-2006) the Independence, renamed the Oceanic (2006), sold for scrap in 2008 but remains in mothballs</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Cunard Ambassador</div></td>
          <td class="operator"><div>Cunard Line</div></td>
          <td class="began"><div>1972</div></td>
          <td class="tonnage"><div>14,160</div></td>
          <td class="status"><div >Burnt 1974, rebuilt into a livestock carrier, renamed Linda Clausen, later Procyon, Raslan. Scrapped 1984 after a second fire.</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Aegean Beauty</div></td>
          <td class="operator"><div>Voyages to Antiquity</div></td>
          <td class="began"><div>1973</div></td>
          <td class="tonnage"><div>11,563</div></td>
          <td class="status"><div >Formerly Aegean Dolphin and Aegean I. Operating</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Serenade of the Seas</div></td>
          <td class="operator"><div>Royal Caribbean International</div></td>
          <td class="began"><div>2003</div></td>
          <td class="tonnage"><div>90,090</div></td>
          <td class="status"><div >Operating</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Queen Elizabeth 2</div></td>
          <td class="operator"><div>Cunard Line</div></td>
          <td class="began"><div>1969</div></td>
          <td class="tonnage"><div>70,327</div></td>
          <td class="status"><div >Left fleet in November 2008</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Queen Elizabeth</div></td>
          <td class="operator"><div>Cunard Line</div></td>
          <td class="began"><div>2010</div></td>
          <td class="tonnage"><div>92,000</div></td>
          <td class="status"><div >Operating</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Regent Sea</div></td>
          <td class="operator"><div>Regency Cruises</div></td>
          <td class="began"><div>1957</div></td>
          <td class="tonnage"><div></div></td>
          <td class="status"><div >Began operation in 1957 as the Gripsholm (II) for Swedish America Line. Ended operation when Regency went bankrupt in 1995. Was to be converted to a casino ship, but later marked for scrap. Prior to scrapping, was looted by pirates, then sank in heavy seas in 2001.</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Allure of the Seas</div></td>
          <td class="operator"><div>Royal Caribbean International</div></td>
          <td class="began"><div>2010</div></td>
          <td class="tonnage"><div>225,000</div></td>
          <td class="status"><div >Starts service in December 2010</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Amadea</div></td>
          <td class="operator"><div>Phoenix Reisen</div></td>
          <td class="began"><div>2006</div></td>
          <td class="tonnage"><div>28,717</div></td>
          <td class="status"><div >Operating. Ex-Asuka</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Amant</div></td>
          <td class="operator"><div>PhoenixVoyages(Vietnam)</div></td>
          <td class="began"><div>2010</div></td>
          <td class="tonnage"><div></div></td>
          <td class="status"><div >Built in 2010 by a local Vietnamese shipyard (Vuotsong), L'Amant operates on the Mekong River in Vietnam, and is without any doubt the most well constructed vessel sailing in Vietnam.</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Oasis of the Seas</div></td>
          <td class="operator"><div>Royal Caribbean Cruise Line</div></td>
          <td class="began"><div>2009</div></td>
          <td class="tonnage"><div>225,282</div></td>
          <td class="status"><div >Operating</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Andes</div></td>
          <td class="operator"><div>Royal Mail Lines</div></td>
          <td class="began"><div>1959</div></td>
          <td class="tonnage"><div>27,000</div></td>
          <td class="status"><div >Was liner, became cruise ship in 1959.</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Anna Nery</div></td>
          <td class="operator"><div>Companhia de Navegacao Costeirab</div></td>
          <td class="began"><div>1962</div></td>
          <td class="tonnage"><div></div></td>
          <td class="status"><div >Ended service in 1978. Currently operating as Salamis Glory</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>National Geographic Endeavour</div></td>
          <td class="operator"><div>Lindblad Expeditions</div></td>
          <td class="began"><div>1996</div></td>
          <td class="tonnage"><div></div></td>
          <td class="status"><div >Operating, also known as Endeavour</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Liberty of the Seas</div></td>
          <td class="operator"><div>Royal Caribbean International</div></td>
          <td class="began"><div>2007</div></td>
          <td class="tonnage"><div>154,407</div></td>
          <td class="status"><div >Operating</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Norwegian Epic</div></td>
          <td class="operator"><div>Norwegian Cruise Line</div></td>
          <td class="began"><div>2010</div></td>
          <td class="tonnage"><div>153,000</div></td>
          <td class="status"><div >Operating</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Independence of the Seas</div></td>
          <td class="operator"><div>Royal Caribbean International</div></td>
          <td class="began"><div>2008</div></td>
          <td class="tonnage"><div>154,407</div></td>
          <td class="status"><div >Operating</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Navigator of the Seas</div></td>
          <td class="operator"><div>Royal Caribbean International</div></td>
          <td class="began"><div>2002</div></td>
          <td class="tonnage"><div>  138,000</div></td>
          <td class="status"><div >Operating</div></td>                        
        </tr>
        		  <tr>
          <td class="name"><div>Caribbean Princess</div></td>
          <td class="operator"><div>Princess Cruises</div></td>
          <td class="began"><div>2004</div></td>
          <td class="tonnage"><div>112,894</div></td>
          <td class="status"><div >Operating</div></td>                        
        </tr>
            </tbody>
  	</table>
	</div>
</div>
</body>
</html>