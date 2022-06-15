<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
     <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js"type="text/javascript"> </script>
    <link rel="stylesheet" href="resources/css/forumboard.css">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
    <title>게시판 상세페이지(유저아님)</title>
    
	</head>
    <body id="forumwindow-body">
    
    <script>
$(function (){
	$("#show-comment").click(function (){
  	$("#comment-div").toggle();
  });
});

$(function (){
	$("#btn-comment").click(function (){
  	$("#comment-comment").toggle();
  });
});
</script>    
    
    <jsp:include page="../header2.jsp"></jsp:include>
    
 	
      <div class="container-fluid">
      <div class="row">
        <div class="col-md-12">
          <div class="card mb-4">
            <div class="card-header">
              <div class="media flex-wrap w-100 align-items-center">
                <img src="data:image/png;base64,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" class="d-block ui-w-40 rounded-circle" alt="ID">
                 <div class="media-body ml-3">ID: 
                   <div class="text-muted medium">제목 : <strong></strong></div>
                 </div>
                <div class="text-muted small ml-3">
                  <div>날짜 : <strong><fmt:formatDate pattern="yyyy/MM/dd" value=""/></strong></div>
                  <div>조회수: <strong></strong></div>
                </div>
              </div>
            </div>
          <div class="card-body">
           <p>  </p>
         </div>
         <div class="card-footer d-flex flex-wrap justify-content-between align-items-center px-0 pt-0 pb-3">
                           <div class="px-4 pt-3 text-muted d-inline-flex align-items-center align-middle">
                               <i class="fa fa-heart text-danger"></i>&nbsp; <span class="align-middle">댓글수:</span>
                              <span class="text-muted d-inline-flex align-items-center align-middle ml-4">
                                <button class="btn" id="show-comment"><i class=""><span style="color:white;">댓글보기</i></span></button>
                              </span>
                            </div>
                         
                         </div>
                       </div>
                     </div>
                   </div>
                 </div>
             
                 
                 
   <!-- comment -->
  <div class="container-fluid" style="padding-top:0; display:none;" id="comment-div">
      <div class="row">
        <div class="col-md-12">
          <div class="card mb-4">
           <div class="card-header">
            <h5>댓글</h5>
           </div>
          
          <div class="card-body">
            <ul>
              <li style="list-style:none;">ID:test1</li>
            </ul>
           <p> 테스트 중입니다 </p>
           <span>2020.05.15 18:40 </span>
           <br>
           <button class="btn" id="btn-comment">답글</button>
         </div>
         <div class="card-footer input-group" id="comment-comment">
 			<input type="text" class="form-control" placeholder="답글을 입력해주세요">
 			<span class="input-group-btn">
 			 <button class="btn" type="button" style="margin-left: 10px;">등록</button></span>
      <!--    <textarea class="form-control" id="comment-comment" style="resize: none;" placeholder="답글을 입력해주세요"></textarea>
         <button class="btn" style="float:right;">등록</button> -->
         </div>
         
         <div class="u_cbox_reply_area"></div>
         
          <div class="card-body">
            <ul>
              <li style="list-style:none;">ID:test2</li>
            </ul>
           <p> 테스트 중~!!! </p>
           <span>2020.05.13 18:40 </span>
           <br>
           <br>
           <button style="float:left;" class="btn" id="btn-comment">답글</button>
         </div>
               </div>
                     </div>
                   </div> 
                 </div>
                 
         
         
         <div class="card-footer input-group" id="show-textarea">
          <input type="text" class="form-control z-depth-1" style="resize:none;" type="text" placeholder="게시판의 댓글을 입력해주세요">
           <span class="input-group-btn">
           <button class="btn" type="button" style="margin-left: 10px;">등록</button></span>
            </div>
                            <!--  <textarea class="form-control z-depth-1" style="resize: none;" type="text" placeholder="게시판 글의 댓글을 입력해주세요."></textarea> -->
         
                   
                 

                 

<jsp:include page="../footer.jsp"></jsp:include>
    </body>
    
  </html>
