 <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta http-equiv="Content-Type" content="text/html" charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.0/font/bootstrap-icons.css">
    <link rel="stylesheet" href="resources/css/forumboard.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script     src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<!--   	<script type="text/javascript" src="resources/js/forum.js"></script> -->
    <!--  include SummerNote -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
	<script src="resources/js/summernote-ko-KR.js"></script>
    <title>게시판 수정</title>
    
  </head>

  <body>
  
<script>
$(document).ready(function(){
	$('#pcontent').summernote({
		minHeight: 370,
		maxHeight: null,
		focus: true,
		lang: 'ko-KR',
		
	});
	
	 var formObj = $("form[role='form']");
	    console.log(formObj);

	    $(".modBtn").on("click", function () {
	    	if(!confirm("수정하시겠습니까?")){
	    		return false;
	    	}else{
	    		formObj.submit();
	    	}
	    });

	    $(".cancelBtn").on("click", function () {
	    	self.location = "${path}/Bteamproject/forum"
	    });

	    $(".listBtn").on("click", function () {
	        self.location = "${path}/Bteamproject/forum"
	    });        
	    
	    
	var formObj = $("form[name='updateForm']");
	
	$(document).on("click","#fileDel", function(){
		$(this).parent().remove();
	})	
	fn_addFile();
	
	
});

function fn_del(value, name){
	var fileNoArry = new Array();
	var fileNameArry = new Array();	
		fileNoArry.push(value);	
		fileNameArry.push(name);
		
		console.log(fileNameArry);
		$("#fileNoDel").attr("value", fileNoArry);
		$("#fileNameDel").attr("value", fileNameArry);
	}
function fn_addFile(){
	var fileIndex = 1;
	$(".fileAdd_btn").on("click", function(){
		$("#fileIndex").append("<div><input type='file'  name='file_"+(fileIndex++)+"'>"+"<button type='button' class='btn-btn'  id='fileDelBtn'>"+"삭제"+"</button></div>");
	});
	$(document).on("click","#fileDelBtn", function(){
		$(this).parent().remove();
		
	});
}


</script> 
  
  
  <jsp:include page="../header2.jsp"></jsp:include>
    <div class="container" role="main" id="chat-container1">
      <h2>게시판 수정</h2>
       <form role="form" name="updateForm" method="post" action="update" enctype="multipart/form-data">
        <input type="hidden" id="pnum" name="pnum" value="${pnum.pnum}">
        <input type="hidden" id="fileNoDel" name="fileNoDel[]" value=""> 
		<input type="hidden" id="fileNameDel" name="fileNameDel[]" value=""> 
         <div class="mb-3">
           <label for="title">제목</label>
            <input type="text" class="form-control" id="ptitle" name="ptitle" value="${pnum.ptitle}"/>
         </div>

  <div class="mb-3">
    <label for="content">내용</label>

      <div class="row">
        <div class="col-sm-11 ml-auto">
  </div>
</div>
<textarea class="form-control" rows="5"  id="pcontent" name="pcontent" style="resize: none; height:185px;">${pnum.pcontent}</textarea>
</div>
<div id="fileIndex">
	<c:forEach var="file" items="${file}" varStatus="var">
<div>
 <input type="hidden" id="FILE_NO" name="FILE_NO_${var.index}" value="${file.FILE_NO}">
  <input type="hidden" id="FILE_NAME" name="FILE_NAME" value="FILE_NO_${var.index}">
   <a href="#" id="fileName" style="color:black;" onclick="return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)
    <button id="fileDel" class="btn-btn" onclick="fn_del('${file.FILE_NO}','FILE_NO_${var.index}');" type="button">삭제</button><br>
</div>
    </c:forEach>
</div>



<div class="btn-group" id="btn-group1">
   <button type="button" class="fileAdd_btn btn-btn" style="margin-right:60%;">파일추가</button>
  
  <button type="submit" id="btn-button"class="btn-btn modBtn">수정하기</button>
  <button type="button" id="btn-button"class="btn-btn listBtn">목록</button>
 <button id="btn-button" class="btn-btn cancelBtn" style="float:right;">수정 그만하기</button>
</div>
</form>
</div>








<jsp:include page="../footer.jsp"></jsp:include>

  </body>
</html>
