<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
    <!-- Bootstrap core CSS -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <!-- Custom styles for this template -->
	<link href="resources/css/chatlist.css" rel="stylesheet">
<title></title>
</head>
<body id="chat-body">
<!-- header -->
<jsp:include page="../header2.jsp"></jsp:include>

<div class="container" id="chat-container">

	<div class="chat-sort">
	<!-- search bar -->
		<div class="container" id="chat-searchbar">
		  <div class="row">
		    <div id="custom-search-input">
		      <div class="input-group col-md-12">
		        <input type="text" class="search-query form-control" placeholder="이름과 서비스를 입력해주세요."/>
		         <span class="input-group-btn">
		          <button class="btn btn" type="button">
		           <span class="glyphicon glyphicon-search"></span>
		         </button>
		       </span>
		     </div>
		   </div>
		 </div>
		</div>		
	
	<!-- navber -->
	
	<!--
	<nav class="nav-container">
	    <a class="nav-link active" href="#">전체</a>
	</nav>
	-->
	
		<!-- chatlist -->
		<div class="chat-list">
			<div class="container">
				<div class="row" style="" id="chat-item">
				    <div class="col-md-3" id="chat-img"><img class="chat-img" src="https://i.pinimg.com/originals/a7/ee/b8/a7eeb85a1d27390ebdf770f8cf31e434.jpg" alt="image" style="width:58px;"></div>
				    <a href="http://localhost:9000/Bteamproject/chatform" class="chat-enter"><div class="chat-text">
				    	<p class="col-md-3" id="chat-name">김태용</p>
				    	<div class="col-md-3" id="chat-msg">안녕하세요...</div>
				   	</div></a>
				    <button type="button" aria-label="Close" class="btn col-md-3" id="btn-close" style="background-color:white;"><img src="https://cdn-icons-png.flaticon.com/512/458/458594.png" style="width:33px;"></button>
				    <button type="button" class="btn btn col-md-3" id="btn-complete" data-toggle="modal" data-target="#firstmodal">거래완료</button>
				</div>
			</div>
			
			<div class="chat-list">
			<div class="container">
				<div class="row" style="" id="chat-item">
				    <div class="col-md-3" id="chat-img"><img class="chat-img" src="https://i.pinimg.com/originals/a7/ee/b8/a7eeb85a1d27390ebdf770f8cf31e434.jpg" alt="image" style="width:58px;"></div>
				    <a href="http://localhost:9000/Bteamproject/chatform" class="chat-enter"><div class="chat-text">
				    	<p class="col-md-3" id="chat-name">김태용</p>
				    	<div class="col-md-3" id="chat-msg">안녕하세요...</div>
				   	</div></a>
				    <button type="button" aria-label="Close" class="btn col-md-3" id="btn-close" style="background-color:white;"><img src="https://cdn-icons-png.flaticon.com/512/458/458594.png" style="width:33px;"></button>
				    <button type="button" class="btn btn col-md-3" id="btn-complete" data-toggle="modal" data-target="#firstmodal">거래완료</button>
				</div>
			</div>
			
			<div class="container">
				<div class="row" style="" id="chat-item">
				    <div class="col-md-3" id="chat-img"><img class="chat-img" src="https://i.pinimg.com/originals/a7/ee/b8/a7eeb85a1d27390ebdf770f8cf31e434.jpg" alt="image" style="width:58px;"></div>
				    <a href="#" class="chat-enter">
				    <div class="chat-text">
				    	<p class="col-md-3" id="chat-name">김태용</p>
				    	<div class="col-md-3" id="chat-msg">안녕하세요...</div>
				   	</div></a>
				    <button type="button" aria-label="Close" class="btn col-md-3" id="btn-close" style="background-color:white;"><img src="https://cdn-icons-png.flaticon.com/512/458/458594.png" style="width:33px;"></button>
				    <button type="button" class="btn btn col-md-3" id="btn-complete" data-toggle="modal" data-target="#firstmodal">거래완료</button>
				</div>
			</div>
			
			<div class="container">
				<div class="row" style="" id="chat-item">
				    <div class="col-md-3" id="chat-img"><img class="chat-img" src="https://i.pinimg.com/originals/a7/ee/b8/a7eeb85a1d27390ebdf770f8cf31e434.jpg" alt="image" style="width:58px;"></div>
				    <a href="#" class="chat-enter"><div class="chat-text">
				    	<p class="col-md-3" id="chat-name">김태용</p>
				    	<div class="col-md-3" id="chat-msg">안녕하세요...</div>
				   	</div></a>
				    <button type="button" aria-label="Close" class="btn col-md-3" id="btn-close" style="background-color:white;"><img src="https://cdn-icons-png.flaticon.com/512/458/458594.png" style="width:33px;"></button>
				    <button type="button" class="btn btn col-md-3" id="btn-complete" data-toggle="modal" data-target="#firstmodal">거래완료</button>
				</div>
			</div>
	
	
	</div>	
	
	













<div class="modal fade" id="firstmodal"  role="dialog"
 aria-labelledby="basicModal" aria-hidden="true">
 <div class="modal-dialog">
   <div class="modal-content" style="width: 280px; height:91px; margin:auto;">
     <div class="modal-header" style="border:none; margin:auto;">
       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
       <h4 class="modal-title" id="myModalLabel" style="text-align:center; font-weight:bolder;">리뷰를 작성하시겠습니까?</h4>
     </div>


      <a href="#" data-target="#largeModal" data-toggle="modal"><button type="button" class="btn" style="float: left; width:139px; color:white;">네</button></a>
      <a href="#" data-dismiss="modal" aria-label="Close"><button type="button" class="btn btn-class" data-dismiss="modal" style="float: right; width:139px; color:white;">아니오</button></a>


    </div>
   </div>
 </div>	<!-- modal fade -->

<!--  large modal -->

 <div class="modal fade" id="largeModal" tabindex="-1" role="dialog"
 aria-labelledby="basicModal" aria-hidden="true">
   <div class="modal-dialog" role="document">
     <div class="modal-content" style="height:345px">
       <div class="modal-header bg-info text-white" id="modal-header">
         <button type="button" style="background-color:#1BBC9B" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
         <h2 class="modal-title" id="Review-title">Review</h2>
       </div>
       <div class="modal-body pb-0">
         <form class="">
           <div class="starpoint_wrap">
       <div class="starpoint_box">
         <label for="starpoint_1" class="label_star" title="0.5"><span class="blind">0.5점</span></label>
         <label for="starpoint_2" class="label_star" title="1"><span class="blind">1점</span></label>
         <label for="starpoint_3" class="label_star" title="1.5"><span class="blind">1.5점</span></label>
         <label for="starpoint_4" class="label_star" title="2"><span class="blind">2점</span></label>
         <label for="starpoint_5" class="label_star" title="2.5"><span class="blind">2.5점</span></label>
         <label for="starpoint_6" class="label_star" title="3"><span class="blind">3점</span></label>
         <label for="starpoint_7" class="label_star" title="3.5"><span class="blind">3.5점</span></label>
         <label for="starpoint_8" class="label_star" title="4"><span class="blind">4점</span></label>
         <label for="starpoint_9" class="label_star" title="4.5"><span class="blind">4.5점</span></label>
         <label for="starpoint_10" class="label_star" title="5"><span class="blind">5점</span></label>
         <input type="radio" name="starpoint" id="starpoint_1" class="star_radio">
         <input type="radio" name="starpoint" id="starpoint_2" class="star_radio">
         <input type="radio" name="starpoint" id="starpoint_3" class="star_radio">
         <input type="radio" name="starpoint" id="starpoint_4" class="star_radio">
         <input type="radio" name="starpoint" id="starpoint_5" class="star_radio">
         <input type="radio" name="starpoint" id="starpoint_6" class="star_radio">
         <input type="radio" name="starpoint" id="starpoint_7" class="star_radio">
         <input type="radio" name="starpoint" id="starpoint_8" class="star_radio">
         <input type="radio" name="starpoint" id="starpoint_9" class="star_radio">
         <input type="radio" name="starpoint" id="starpoint_10" class="star_radio">
         <span class="starpoint_bg"></span>
       </div>
     </div>


           <div class="form-floating mb-3">
             <textarea col="10" rows="10" class="form-control rounded-4" id="floatingPassword"
             placeholder="리뷰작성하기" style="height:137px"></textarea>
             <label for="floatingPassword"></label>
           </div>
         <div style="position:flex;">
           <a>
           <label class="btn-sm rounded-4 btn align-middle input-file-button"  for="input-file" style="font-size:20px; width:49%;color:white; height:45px; padding:7px;">파일첨부</label></a>
           <input id="input-file" style= "display:none;" type="file"/>
           <a href="#" data-target="#secondModal" data-toggle="modal">
           <button class="btn-sm rounded-4 btn" style=" width:49%; color:white; height:45px; font-size:20px;" type="submit" data-target="#secondModal" data-dismiss="modal">제출하기</button></a>
	</div>
         </form>
       </div>
     </div>
   </div>
 </div> 	
</div>

<div class="modal" id="secondModal">
 <div class="modal-dialog">
   <div class="modal-content">
     <div class="modal-header alert alert-success">
       <button type="button" data-toggle="modal" data-target="#firstmodal" data-dismiss="modal" aria-label="Close" style="border:none; background-color: rgba(0,0,0,0); float:right;"><span aria-hidden="true">&times</span></button>
       <h5 class="modal-title">제출 완료!</h5>
     </div>
      <div class="modal-body">
       <p>제출이 완료되었습니다</p>
     </div>
   </div>
 </div>
</div>	
</div>

</div>
<!-- footer -->
<jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>
