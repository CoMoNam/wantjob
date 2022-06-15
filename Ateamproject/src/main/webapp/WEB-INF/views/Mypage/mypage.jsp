<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%String smnum = (String)session.getAttribute("smnum");%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/mypage.css"/>
<style>
    #my_modal {
        display: none;
        width: 300px;
        height:100px;
        padding: 20px 60px;
        background-color: #fefefe;
        border: 1px solid #888;
        border-radius: 15px;
    }

    #my_modal .modal_close_btn {
        position: absolute;
        top: 80px;
        right: 20px;
        font-weight: bold;
        color:black;
    }
    #my_modal .modal_close_btn:hover{
    	cursor: pointer;
    }
   #my_modal a:linked{
    	font-style: none;
    	text-decoration: none;
    }
   #my_modal a:visited{
    	font-style: none;
    	text-decoration: none;
    	color:black;
    }
    
    .qwe {
        position: absolute;
        top: 80px;
        right: 80px;
        font-weight: bold;
    }
    
    
</style>
</head>
<body class="bacset" id="bac">
	<jsp:include page="../header2.jsp"></jsp:include>
		
		<section class="mypage_sec1">
			<%-- <input type="hidden" value="<%=smnum%>" name="mnum"> --%>
			<h1 class="title">마이페이지</h1>
			
			<div class="mypage_pr">
			<form action="updateImg" method="post" enctype="multipart/form-data">
				<input type="hidden" value="<%=smnum%>" name="mnum">
				<img class="img-pro" id ="img-pro" src="resources/images/gosupro.jpg" alt="프로필">
				<span class="click_icon"><img id="myBtn" src="resources/images/click_icon.svg"></span>
							<!-- The Modal -->
				<div id="myModal" class="modal">
				  <!-- Modal content -->
				  <div class="modal-content">
				    <span class="close">&times;</span>
				    <h2>프로필 사진 등록</h2>
				    
				    <div class="modalBtns">
 				    	<div id="imgbtn" style="display: block;"><label for="inputimg">사진 등록하기</label></div>
				    	<input type="file" id="inputimg" accept="image/*" name="photo" onchange="PreviewImg();">  
				    	
				    	<button id="imgbtn2" type="submit" style="display: none;">저장</button> 
				    	<button id="basicimg">기본이미지로 변경</button>
				    </div>
				    
				  </div>
				</div>
				</form>
			</div>
		</section>
		<section class="mypage_sec2">
			<ul class="account-info">
				<li class="item-container"><a href="mypage_settingname?mnum=<%=smnum%>">
					<div class="item">
						<div class="item-title">이름</div>
						<div class="item-info">${reli.name }
							<div class="mypage-icon">
								<img alt="화살표" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
							</div>
						</div>
					</div>
				</a></li>
				<li class="item-container"><a href="mypage_settingemail?mnum=<%=smnum%>">
					<div class="item">
						<div class="item-title">이메일</div>
						<div class="item-info">${reli.ID }
							<div class="mypage-icon">
								<img alt="화살표" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
							</div>
						</div>
					</div>
				</a></li>
	 			<li class="item-container"><a href="mypage_settingpassword?mnum=<%=smnum%>">
					<div class="item">
						<div class="item-title">비밀번호</div>
						<div class="item-info">${reli.password }
							<div class="mypage-icon">
								<img alt="화살표" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
							</div>
						</div>
					</div>
				</a></li>
				<li class="item-container"><a href="mypage_settingtel?mnum=<%=smnum%>">
					<div class="item">
						<div class="item-title">휴대전화 번호</div>
						<div class="item-info">${reli.hp }
							<div class="mypage-icon">
								<img alt="화살표" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
							</div>
						</div>
					</div>
				</a></li>
			</ul>
			<ul class="delete-account">
				<div class="toggle-button" id="centered-toggle-button" onclick="change()">
				
					<li class="item-container" id="popup_open_btn">
							<div class="item" >
									계정탈퇴
									<div class="mypage-icon">
										<img alt="화살표" src="https://assets.cdn.soomgo.com/icons/icon-mypage-list-arrow.svg">
									</div>
							</div>
					</li>
				</div>
			</ul> 
			<div id="my_modal">
				<h2>계정을 탈퇴하시겠습니까?</h2>
				<a href="index" class="qwe">탈퇴</a>
    			<a class="modal_close_btn">취소</a>
			</div>
				
		</section>

	<jsp:include page="../footer.jsp"></jsp:include>

<script src="resources/js/outpop.js"></script>
<script type="text/javascript">
	//Get the modal
	var modal1 = document.getElementById("myModal");
	
	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	
	
	var change = document.getElementById("imgbtn");
	var save = document.getElementById("imgbtn2");
	
	change.onclick = function(){
		change.style.display = "none";
		save.style.display ="block";
	}
	save.onclick = function(){
		modal1.style.display = "none";
	}
	
	// When the user clicks on the button, open the modal
	btn.onclick = function() {
	  modal1.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	  modal1.style.display = "none";
	}
	
	// When the user clicks anywhere outside of the modal, close it
	window.onclick = function(event) {
	  if (event.target == modal) {
	    modal1.style.display = "none";
	  }
	}

</script>
 <script type="text/javascript">
	function PreviewImg() {
		//파일리더 생성
		var preview = new FileReader();
		preview.onload = function (e){
			//img id 값
			document.getElementById("img-pro").src = e.target.result;
		};
		//input id 값
		preview.readAsDataURL(document.getElementById("inputimg").files[0]);
	};
</script>

 </body>
</html>