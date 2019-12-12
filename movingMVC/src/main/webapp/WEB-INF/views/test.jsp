<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="./resources/js/jquery.js"></script>
<script src="./resources/smarteditor/js/HuskyEZCreator.js" charset="UTF-8"></script>
<title></title>
</head>
<body>

	<!-- action : 에디터에 입력한 html 코드를 전달받을 Controller페이지 URL -->
<form action="/moving.com/submit" method="post" id="frm">
    <textarea name="editor" id="editor" rows="10" cols="100"
     style="width:766px; height:412px;"></textarea>
    <input type="button" id="savebutton" value="서버전송" />
    
<script>
    $(function(){
    //전역변수
    var obj = [];              
    //스마트에디터 프레임생성
    nhn.husky.EZCreator.createInIFrame({
        oAppRef: obj,
        elPlaceHolder: "editor",
        sSkinURI: "./resources/smarteditor/SmartEditor2Skin.html",
        htParams : {
            // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseToolbar : true,            
            // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
            bUseVerticalResizer : true,    
            // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
            bUseModeChanger : true,
        }
    });
    //전송버튼
    $("#savebutton").click(function(){
        //id가 smarteditor인 textarea에 에디터에서 대입
        obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
        //폼 submit
        $("#frm").submit();
    })
})
</script>
    
</form>


</body>
</html>