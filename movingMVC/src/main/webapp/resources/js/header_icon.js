/**
 * header_icon.js
 */

$(document).ready(function() {
	$("#header_notification_btn").click(function(){
		if($("#header_notification_container_activebox").css('display')=='none') {
			$("#header_notification_container_activebox").show();
		}else{
			$("#header_notification_container_activebox").hide();
		}
	});
	
	$("#header_profile_btn").click(function(){
		if($("#header_profile_container_activebox").css('display')=='none') {
			$("#header_profile_container_activebox").show();
		}else{
			$("#header_profile_container_activebox").hide();
		}
	});
});

$(document).mouseup(function(e) {
	if($("#header_notification_container_activebox").has(e.target).length ===0)
		$("#header_notification_container_activebox").hide();
});

$(document).mouseup(function(e) {
	if($("#header_profile_container_activebox").has(e.target).length ===0)
		$("#header_profile_container_activebox").hide();
});


//$(document).ready(function(){
//	document.getElementById("logout").onclick=function(){
//		document.user_logout.submit();
//		
//	}
//});