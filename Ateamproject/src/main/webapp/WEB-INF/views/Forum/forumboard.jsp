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
  	<script type="text/javascript" src="resources/js/forum.js"></script>
    <!--  include SummerNote -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.css" rel="stylesheet">
	<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.11/summernote-bs4.js"></script>
	<script src="resources/js/summernote-ko-KR.js"></script>

	
    <title>게시판 글 등록</title>
    


<!-- 
/* function submit1() {
	alert("등록이 완료되었습니다!");
	/* location.href="http://localhost:9000/Bteamproject/forum";
	 */ -->



  </head>

  <body>
  
  <script type="text/javascript">
  
  $(document).ready(function(){
		$('#pcontent').summernote({
			placeholder: '내용을 입력해주세요',
			minHeight: 370,
			maxHeight: 500,
			focus: false,
			lang: 'ko-KR'
 });			
})
	

  function _onSubmit(){
  if($("#ptitle").val() == ""){
    	alert("제목을 입력해주세요");
  	$("#ptitle").focus();
  	return false;
    }

  if($("#pcontent").val() == ""){
    	alert("내용을 입력해주세요");
  	$("#pcontent").focus();
  	return false;
    }

  if(!confirm("등록하시겠습니까?")){
  return false;
  }
 }

</script>
  
  <jsp:include page="../header2.jsp"></jsp:include>
    <div class="container" role="main" id="chat-container1">
      <h2>게시판 작성</h2>
      
       <form role="form" name="updateForm" action="write" method="post" onsubmit="return _onSubmit();" enctype="multipart/form-data">
 
         <div class="mb-3">
           <label for="title">제목</label>
            <input type="text" class="form-control" id="ptitle" name="ptitle" placeholder="제목을 입력해 주세요."/>
         </div>

		  <div class="mb-3">
		    <label for="content">내용</label>
		
		      <div class="row">
		        <div class="col-sm-11 ml-auto">
		
		     
		  </div>
		</div>
		
		<textarea class="form-control" rows="5"  id="pcontent" name="pcontent" style="resize: none; height:185px;" placeholder="내용을 입력해주세요."></textarea>
		</div>
		
		
		<div class="btn-group" id="btn-group1">
		  <button type="button" style="border:none;"class="fileAdd_btn btn-btn">파일추가</button>
		 <button  type="submit" style= "position:absolute; left:70%;"id="btn-button"class="btn-btn">등록하기</button>
		 <button id="btn-button" class="btn-btn" style="float:right;"><a href="http://localhost:9000/Bteamproject/forum" id="a-a">작성 그만하기</button></a>
		</div>
 <div id="fileIndex"></div>
		</form>
	</div>	 
      




    
    







<jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>
