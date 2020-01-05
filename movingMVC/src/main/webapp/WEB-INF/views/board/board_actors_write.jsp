<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연기자 프로필 글쓰기</title>
<script src="../resources/js/jquery.js"></script>
<script src="../resources/editor/js/HuskyEZCreator.js" charset="UTF-8"></script>
</head>
<body>
 <form method="post" action="/moving.com/board/actors_write_ok"
 onsubmit="return actors_check();" enctype="multipart/form-data">
  <table border="1" style="width:1024px" cellspacing="0" > <!-- width 임시로 넣어둠. -->
   <caption>연기자 프로필 글쓰기</caption>
   <tr>
    <th  style="width:230px;">글쓴이</th>
    <td><div id="nickname">${nickname}</div> <%--input? --%>
    </td>   
   </tr> 
   
   <tr>
    <th>이름</th>
    <td><div id="name">${name}</div>
   </tr>
   
   <tr>
    <th>썸네일 등록
    <br/>
    *1장만 등록 가능합니다!*
    </th>
    <td>
     <div class="select_img" style="boader:1px; width:200px; height:250px;"><img src="" /></div>
     <input type="file" id="thumbnailImage" name="thumbnailImage"
     style="margin:20px;" />
     <label> * 사진의 기본 사이즈는 200 X 250 입니다. * </label>
    </td>
   </tr>
   
   <tr>
    <th>카테고리</th>
    <td>
    <input type="radio" name="category" value="actor" />배우
    <input type="radio" name="category" value="stunt" />스턴트맨
    <input type="radio" name="category" value="childactor" />아역배우
    <input type="radio" name="category" value="etc"/>기타
    <input id="etctext" name="etctext" size="30" disabled/>
    </td>
   </tr>
   
   <tr>
    <th>E-MAIL</th>
    <td>
    <input type="email" id="email" name="email" size="26"/>
    </td>
   </tr>
   
   <tr>
    <th>생년월일</th>
    <td>
    <input type="date" id="birthDate" name="birthDate" style="width:195px;"/>
    <label>예: 19700101 ( 1970년생 01월 01월 생 )</label>
    </td>
   </tr>
   
   <tr>
    <td colspan="2">
    <label style="font-weight:bold; margin-left:100px;">신장</label>
    <input type="number" id="height" name="height"style="margin-right:10px; 
    width:196.5px;  margin-left:95px;" maxlength="3" oninput="maxLengthCheck(this)">cm
    <label>(소수점 X)</label>
  	<label style="font-weight:bold; margin-left:200px;">성별</label>
  	<input type="radio" name="sex" value="male"/>남성
  	<input type="radio" name="sex" value="female"/>여성
    </td>
   </tr>
   
   <tr>
    <th>웹사이트</th>
    <td>
    <input id="websiteUrl" name="websiteUrl" size="111"/>
    </td>
   </tr>
  
   <tr>
    <th>내용</th>
    <td  class="actors_write_td">
    <textarea name="content" id="content" rows="10" cols="100"></textarea>
    
<script type="text/javascript">
	var oEditors = []; //전역변수
	
	nhn.husky.EZCreator.createInIFrame({ //스마트 에디터 프레임 생성
    	oAppRef: oEditors,
    	elPlaceHolder:"content",
    	sSkinURI: "../resources/editor/SmartEditor2Skin2.html",
    	bUseToolbar : true,		//툴 바 사용 여부
    	bUseVerticalResizer : true,  //입력창 크기 조절 사용 여부
    	bUseVerticalResizer : true, //모드 탭(Editor | HTML | TEXT ) 사용 여부
	});
</script>

    </td>
   </tr> 
    
   <tr>
    <th colspan="2">
    <input type="submit" value="저장" />
    <input type="reset" value="취소" />
    <input type="button" value="목록"
    onclick="location='/moving.com/board/actors?page=${page}';" />
    </th>
   </tr>
  </table>
 </form> 
 
 <script> //파일 업로드 시 해당 화면에 바로 띄워 지게 해줌.
 $("#thumbnailImage").change(function(){
	if(this.files && this.files[0]){
		var reader = new FileReader;
		reader.onload = function(data){
			$(".select_img img").attr("src", data.target.result).width(200).height(250);
		}
		reader.readAsDataURL(this.files[0]);
	} 
 });
 </script>
 
<script>  
 	function maxLengthCheck(object){ //input number는 maxlength가 안됨. 스크립트로 maxlength 지정
	  if (object.value.length > object.maxLength){
	   	object.value = object.value.slice(0, object.maxLength);
	    }//if
	  }//function()
 </script>
 
 <script>
 
 $("input:radio[name=category]").click(function(){
	 if($("input:radio[name=category]:checked").val() == "etc"){
		$("#etctext").removeAttr('disabled');
		$("#etctext").attr("enabled", true);
	 }else{
		$("#etctext").removeAttr("enabled");
		$("#etctext").attr("disabled",true);
		$("#etctext").val(''); //val값 초기화
	 }//if else
 }); //#category change일 경우
 
 </script>  
 
 <script>
 function actors_check(){ //submit 
	 
	 //썸네일 이미지 등록 안됐을 시
	 if(!$("#thumbnailImage").val()){
		 alert("이미지를 등록해주세요!");
		 return false;
	 }//if
	
	 var count = $("input:radio[name=category]:checked").length; //체크박스 선택된 개수 구함
	 
	 if(count < 1){
		 alert("카테고리를 선택해주세요!");
		 return false;
	 }//if

	 if($("input:radio[name=category]:checked").val() == "etc"){ //카테고리 기타 클릭 했을 시,
		 if($("#etctext").val() == null ||
				 $("#etctext").val()== ""){		//기타 선택 후, 텍스트 필드에 값이 없을 경우
			 alert("카테고리 기타 내용을 입력해주세요!");
			$("#etctext").focus();
			 return false;
		 }//if 
	 }//if
	 
	 if($("input:radio[name=category]").is(":checked") == false){
		 alert("성별을 선택해주세요!");  
		 return false;
	 }//if
	 
	 //생년월일이 19900101 이런식이 아닌 19903333 이런식으로 값이 이상하게 하는것을 방지
	 var birth_pattern = /^(19|20)\d{2}-(0[1-9]|1[012])-(0[1-9]|[12][0-9]|3[0-1])$/;
	 if(!birth_pattern .test($("#birthDate").val())){
		 alert("생년월일을 제대로 입력해주세요!");
		 $($("#birthDate").val('').focus());
		 return false;
	 }//if
	 	 
	 //성별 라디오 버튼 클릭한게 없을 경우
	 if($("input:radio[name=sex]").is(":checked") == false){
		 alert("성별을 선택해주세요!");
		 return false;
	 }//if
	  	 		
	//내용 입력이 없을 경우 발생
     oEditors.getById["content"].exec("UPDATE_CONTENTS_FIELD", []); //이걸 추가해주어야 getParameter로
     //값을 넘길때 값이 들어감. submit 전에 필수
     var content = $("#content").val(); 

     if( content == ""  || content == null || content == '&nbsp;' ||
     content == '<p>&nbsp;</p>')  {
          alert("내용을 입력하세요.");
          oEditors.getById["content"].exec("FOCUS"); //포커싱
          return false;
     }//if
	 
 }//subcheck()
 </script>
 
<%@ include file="../include/footer.jsp"%>










