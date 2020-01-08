<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../include/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>연기자 프로필 수정</title>
<script src="../resources/js/jquery.js"></script>
<script src="../resources/editor/js/HuskyEZCreator.js" charset="UTF-8"></script>
</head>
<body>
	
	<div id="bActors_edit_body"> <%--전체 div --%>
	
	<div id="bActors_community"><%--왼쪽 업데이트 사항. 공지,이벤트 등 div --%>
			<div class="bActors_community_tit">
				<%--업데이트--%>
				<h1>커뮤니티</h1>
			</div>
			<%--업데이트 --%>

			<div class="bActors_community_list">
				<%--업데이트 밑에 리스트들 div --%>
				<ul>

					<li class="bActors_community_list_actors"><a href="actors">배우 프로필</a>
					</li>

					<li><a href="contest">시나리오 공모</a></li>

					<li><a href="free">자유게시판</a></li>

					<li><a href="qna">QnA</a> <%--QnA 작업해야 됨 --%></li>

				</ul>
			</div><%--업데이트 밑에 리스트들 div --%>

		</div><%--커뮤니티 배우모집,시나리오 공모 등 div --%>
	

 <form method="post" action="actors_edit_ok"
 onsubmit="return actors_check();" enctype="multipart/form-data">
 <input type="hidden" name="id" value="${ba.id}" />
 <input type="hidden" name="page" value="${page}" />
 
  <table id="bActors_edit_table" border="1" cellspacing="0" >
  
   <tr>
    <th  style="width:30%">닉네임 : </th>
    <td id="bActors_edit_nickname"><div id="nickname">${nickname}</div> <%--input? --%>
    </td>   
   </tr> 
   
   <tr>
    <th style="width:30%">이름</th>
    <td id="bActors_edit_name"><div id="name">${name}</div>
   </tr>
   
   <tr>
    <td id="bActors_edit_image">
     <div class="select_img">
     <img src="${ba.thumbnailImage}" width="200" height="250" />
	 </div>
     <input type="file" id="thumbnailImage" name="thumbnailImage"
     style="margin:20px;"/>
    </td>
   </tr>
   
    <tr>
     <th>E-MAIL</th>
     <td id="bActors_edit_email">
     <input type="email" id="email" name="email" size="26" value="${ba.email}"/>
     </td>
   	</tr>
   	
   	<tr>
   	 <th>신장</th>
   	 <td id="bActors_edit_height">
   	 <input type="number" id="height" name="height" maxlength="3" oninput="maxLengthCheck(this)"
    	style="width:195px;" value="${ba.height}">
    	&nbsp;&nbsp;cm
    <label>(소수점 X)</label>
   	 </td>
   	</tr>
   
   <tr>
    <th>카테고리</th>
    <td>										<%--eq는 equals, ne 는 !=  --%>
    <input type="radio" name="category" value="actor"
    <c:if test="${ba.category eq 'actor'}">
    checked
    </c:if>
    />배우
    <input type="radio" name="category" value="stunt"
    <c:if test="${ba.category eq 'stunt'}">
    checked
    </c:if>
     />스턴트맨
    <input type="radio" name="category" value="childactor"
    <c:if test="${ba.category eq 'childactor'}">
    checked
    </c:if>
     />아역배우
    <input type="radio" name="category" value="etc"
    <c:if test="${ba.category eq 'etc'}">
    checked
    </c:if>
    />기타
    <input id="etctext" name="etctext" size="30" 
    <c:if test="${ba.category eq 'etc'}">	
    enabled
    </c:if> 
    <c:if test="${ba.category ne 'etc'}">	
    disabled
    </c:if>
    value="${ba.etctext}"/>
    </td>
   </tr> 
   
   <tr>
    <th>생년월일</th>
    <td>
    <input type="date" id="birthDate" name="birthDate" style="width:195px;"
     value="${fn:substring(ba.birthDate,0,10) }" />
    <label>예: 19700101 ( 1970년생 01월 01월 생 )</label>
    </td>
   </tr>
   
   <tr>
	<th>성별</th>
	<td>
  	<input type="radio" name="sex" value="male"
  	<c:if test="${ba.sex eq 'male'}">
  	checked
  	</c:if>
  	/>남성
  	<input type="radio" name="sex" value="female"
  	<c:if test="${ba.sex eq 'female'}">
  	checked
  	</c:if>
  	/>여성
    </td>
   </tr>
   
   <tr>
    <th>웹사이트</th>
    <td>
    <input id="websiteUrl" name="websiteUrl" size="88" value="${ba.websiteUrl}"/>
    </td>
   </tr>
  
   <tr>
    <td colspan="2" id="bActors_edit_content">
    <textarea name="content" id="content" rows="10" cols="100">${ba.content}</textarea>
    
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
    


  </table>
  
  <div id="bActors_edit_button"> <%--버튼 div --%>
   
    <input type="submit" value="저장" class="bActors_edit_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"/>
    <input type="reset" value="취소" class="bActors_edit_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"/>
    <input type="button" value="목록" class="bActors_edit_btn button
       button_c9d8ce2 button_f12 button_p1024 button_r4"
    onclick="location='/moving.com/board/actors?page=${page}';" />
  
  </div> <%--버튼 div --%>
  
 </form> 
 
 </div> <%--전체 div --%>
 
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
	
	 var count = $("input:radio[name=category]:checked").length; //라디오 선택된 개수 구함
	 
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










