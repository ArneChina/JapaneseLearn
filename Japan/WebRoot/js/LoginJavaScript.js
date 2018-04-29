var __links = document.querySelectorAll('a');
function __linkClick(e) { 
    parent.window.postMessage(this.href, '*');
} ;
for (var i = 0, l = __links.length; i < l; i++) {
    if ( __links[i].getAttribute('data-t') == '_blank' ) { 
        __links[i].addEventListener('click', __linkClick, false);
    }
}
$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
	});	  
});
function addLoadEvent(func){
	var oldonload = window.onload;
	if(typeof window.onload != 'function'){
		window.onload = func;
	}else{
		window.onload = function(){
			oldonload();
			func();
		};
	}
}
function UsernameControl(){
    var Username = document.getElementById("Username");
    Username.onfocus = function(){
        Username.value = '';
    }
    Username.onblur = function(){
        if (this.value == '') {this.value = 'Username';}
    }
}
function PasswordControl(){
    var Password = document.getElementById("Password");
    Password.onfocus = function(){
        Password.value = '';
    }
    Password.onblur = function(){
        if (this.value == '') {this.value = 'Password';}
    }
}
function ChangeType(){
    var changetype = document.getElementById("changetype");
    changetype.onclick = function(){
    var Password = document.getElementById("Password");
    var Type = Password.getAttribute("type").toString();
    if("password"==Type) {Password.setAttribute("type","text");}
    if("text"==Type) {Password.setAttribute("type","password");}
    return false;
    };
}
function checkCode(){
    var a = document.getElementById("checkCode");
    var img = document.getElementById("picimg");
    a.onclick = function(){
        var imgsrc = img.getAttribute("src");
        imgsrc = imgsrc + "?ram=" + Math.random();
        img.setAttribute("src",imgsrc);
        return false;
    };
}
addLoadEvent(ChangeType);
addLoadEvent(checkCode);
addLoadEvent(UsernameControl);
addLoadEvent(PasswordControl);


