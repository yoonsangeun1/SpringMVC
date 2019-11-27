/**
 *  메인배너 클릭시 해당 배너로 스크롤이동 move_banner.js
 */

    function Move_biMoving(){
        var offset = $("#biMoving_wrap").offset();
        $('html, body').animate({scrollTop : offset.top}, 500);
    }
    function Move_biSns(){
        var offset = $("#biSns_wrap").offset();
        $('html, body').animate({scrollTop : offset.top}, 500);
    }
    function Move_biProject(){
        var offset = $("#biProject_wrap").offset();
        $('html, body').animate({scrollTop : offset.top}, 500);
    }
    function Move_biTeaser(){
        var offset = $("#biTeaser_wrap").offset();
        $('html, body').animate({scrollTop : offset.top}, 500);
    }
    function Move_biBoard(){
        var offset = $("#biBoard_wrap").offset();
        $('html, body').animate({scrollTop : offset.top}, 500);
    }
    function Move_biStatistics(){
        var offset = $("#biStatistics_wrap").offset();
        $('html, body').animate({scrollTop : offset.top}, 500);
    }