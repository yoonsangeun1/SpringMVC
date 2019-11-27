
/**
 * 메인  자동 횡슬라이드 배너 slide.js
 */

/* 자동 슬라이더 배너 */
var index=0;
	window.onload = function(){
	slideShow();
	}
	
	function slideShow() {
		var i;
		var x = document.getElementsByClassName("auto_mySlides");
		
		for(i=0;i<x.length;i++){
			x[i].style.display = "none";
		}
		
		index++;
		if(index > x.length) {
			index=1;
		}
		x[index-1].style.display = "block";
		setTimeout(slideShow,4000);
	}

	 /* 수동 슬라이드 배너 */

	function plusDivs(n) {
	    showDivs(index += n);
	}

	function showDivs(n) {
	    var i;
	    var x = document.getElementsByClassName("auto_mySlides");
	    if (n > x.length) {index = 1}
	    if (n < 1) {index = x.length} ;
	    for (i = 0; i < x.length; i++) {
	        x[i].style.display = "none";
	    }
	    x[index-1].style.display = "block";
	}
	
