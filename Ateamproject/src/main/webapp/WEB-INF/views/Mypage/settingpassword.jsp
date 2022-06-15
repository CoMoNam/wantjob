<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/settingname.css">
</head>
<body>
	<jsp:include page="../header2.jsp"></jsp:include>
	<div class="line"></div>
	<!-- <form action="UpwUpdate" name="membersVO" method="post"> -->
		<div class="setting-cont">
			<h1 class="setting-title">비밀번호 수정</h1>
			<section class="setting-sec1">
				
				<div class="subtitle">기존 비밀번호</div>
				<div class="inputbox">
					<input name="password" id ="setting_current_password"  type="password" placeholder="현재 비밀번호를 입력해주세요">
					<div class="pw_show" onclick="show()">표시</div>
					
				</div>
				
				<div class="subtitle">새로운 비밀번호</div>
				<div class="inputbox"><input class="pw" id ="pw1" value="" type="password" placeholder="영문+숫자 조합 8자리 이상 입력해주세요"></div>
				
				<div class="subtitle">새로운 비밀번호 확인</div>
				<div class="inputbox">
					<input class="pw" id ="pw2" value="" type="password" placeholder="비밀번호를 한번 더 입력해주세요">
					<font id="checkPw" size="2"></font>
				</div>
				
			</section>
			<section class="setting-sec2">
				<div class="btn-cont">
					
						<a href="mypage" class="setting-cancle"><p>취소</p></a>
						<button type="submit" class="setting-comp">수정완료</button>
					
				</div>
			</section>
		</div>
<!-- 	</form> -->
<jsp:include page="../footer.jsp"></jsp:include>
<script src="resources/js/settingpassword.js"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
		$('.pw').keyup(function(){
			let pass1 = $('#pw1').val();
			let pass2 = $('#pw2').val();
			
			if(pass1 !="" || pass2 != ""){
				if(pass1 == pass2){
					$('#checkPw').html('일치');
					$('#checkPw').attr('color','green');
				}else{
					$('#checkPw').html('불일치');
					$('#checkPw').attr('color','red');
				}
			}
		})
</script>
</body>
</html>