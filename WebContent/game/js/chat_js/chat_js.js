/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


var waittime=800;		
/* Internal Variables & Stuff */
	chatmsg.focus()
	document.getElementById("chatwindow").innerHTML = "loading...";

	var xmlhttp = false;
	var xmlhttp2 = false;


/* Request for Reading the Chat Content */
function ajax_read(url) {
	if(window.XMLHttpRequest){
		xmlhttp=new XMLHttpRequest();
		if(xmlhttp.overrideMimeType){
			xmlhttp.overrideMimeType('text/xml');
		}
	} else if(window.ActiveXObject){
		try{
			xmlhttp=new ActiveXObject("Msxml2.XMLHTTP");
		} catch(e) {
			try{
				xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
			} catch(e){
			}
		}
	}

	if(!xmlhttp) {
		alert('Giving up :( Cannot create an XMLHTTP instance');
		return false;
	}

	xmlhttp.onreadystatechange = function() {
	if (xmlhttp.readyState==4) {
		document.getElementById("chatwindow").innerHTML = xmlhttp.responseText;
                document.getElementById("chatwindow").scrollTop = document.getElementById("chatwindow").scrollHeight;
		zeit = new Date(); 
		ms = (zeit.getHours() * 24 * 60 * 1000) + (zeit.getMinutes() * 60 * 1000) + (zeit.getSeconds() * 1000) + zeit.getMilliseconds(); 
		intUpdate = setTimeout("ajax_read('http://localhost:8080/Rummy/game/chatting/out1.txt?x=" + ms + "')", waittime);
                //intUpdate = setTimeout("ajax_read('C:/chatting/out.txt?x=" + ms + "')", waittime);
                //intUpdate = setTimeout("ajax_read('C:/chatting/out.txt')", waittime);
                
		}
	}

	xmlhttp.open('GET',url,true);
	xmlhttp.send(null);
}

/* Request for Writing the Message */
function ajax_write(url){
	if(window.XMLHttpRequest){
		xmlhttp2=new XMLHttpRequest();
		if(xmlhttp2.overrideMimeType){
			xmlhttp2.overrideMimeType('text/xml');
		}
	} else if(window.ActiveXObject){
		try{
			xmlhttp2=new ActiveXObject("Msxml2.XMLHTTP");
		} catch(e) {
			try{
				xmlhttp2=new ActiveXObject("Microsoft.XMLHTTP");
			} catch(e){
			}
		}
	}

	if(!xmlhttp2) {
		alert('Giving up :( Cannot create an XMLHTTP instance');
		return false;
	}

	xmlhttp2.open('GET',url,true);
	xmlhttp2.send(null);
        ajax_read(url);
}

/* Submit the Message */
function submit_msg(){
	nick = document.getElementById("chatnick").value;
	msg = document.getElementById("chatmsg").value;

	if (nick == "") { 
		check = prompt("please enter username:"); 
		if (check === null) return 0; 
		if (check == "") check = "anonymous"; 
		document.getElementById("chatnick").value = check;
		nick = check;
	} 

	document.getElementById("chatmsg").value = "";
	ajax_write("submitMessage?m=" + msg + "&n=" + nick);
}

/* Check if Enter is pressed */
function keyup(arg1) { 
	if (arg1 == 13) submit_msg(); 
}

/* Start the Requests! ;) */
//var intUpdate = setTimeout("ajax_read('chat.txt')", waittime);
//var intUpdate = setTimeout("ajax_read('C:\\chatting\\out.txt')", waittime);
//var intUpdate = setTimeout("ajax_read('C:/chatting/out.txt')", waittime);
	var	intUpdate = setTimeout("ajax_read('http://localhost:8080/web_chat_server_mystruts2/chatting/out1.txt')", waittime);