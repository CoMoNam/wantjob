<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/gosuprofile.css">
</head>
<body>
<jsp:include page="header2.jsp"></jsp:include>
	<div class="gosumypage">
		<div class="gosuheader">
			<div class="gosumypage_img">
				<div>
					<img class="gosupro" alt="" src="resources/images/gosupro.jpg">
					
				</div>
				<span class="click_icon"><img src="resources/images/click_icon.svg"></span>
			</div>
			<div class="gosuinfo">
				<ul>
					<li>
						<div class="point">0</div>
						<div class="label">리뷰평점</div>
					</li>
					<li class="divider"></li>
					<li>
						<div class="point">0</div>
						<div class="label">리뷰수</div>
					</li>
					<li class="divider"></li>
					<li>
						<div class="point">0</div>
						<div class="label">고용수</div>
					</li>
				</ul>
			</div>
		</div>	<!-- gosuheader -->
		
		<div class="my-profile-comp name">
			<div class="heading">
				<h2>이름</h2>
				<div class="action-group" id="change" onclick="change1()">수정</div>
				<div class="action-group2" id="save" onclick="save1()">저장</div>
				
			</div>
			<div class="info" id="infoname">민경</div>
			<div class="saving" id="saving"> 
				<input type="text" id= "save info1" value="" placeholder="이름을 입력해주세요.">
			</div>
		</div>
		
		<div class="my-profile-comp service">
			<div class="heading">
				<h2>대표서비스</h2>
				<div class="action-group" id="change" onclick="change2()">수정</div>
			</div>
			<div class="info">과외</div>
		</div>
		
		<div class="my-profile-comp introduce">
			<div class="heading">
				<h2>한줄소개</h2>
				<div class="action-group" id="change" onclick="change3()">수정</div>
			</div>
			<div class="info">민경 하이하이하이</div>
		</div>
		
		<div class="my-profile-comp location">
			<div class="heading">
				<h2>활동 지역</h2>
				<div class="action-group" id="change" onclick="change()">수정</div>
			</div>
			<div class="info">경기 남양주시</div>
		</div>
		
		<div class="my-profile-comp active-time">
			<div class="heading">
				<h2>연락 가능 시간</h2>
				<div class="action-group" id="change" onclick="change()">수정</div>
			</div>
			<div class="info">오전9시 - 오후6시</div>
		</div>
		
		<div class="my-profile-comp career">
			<div class="heading">
				<h2>경력</h2>
				<div class="action-group" id="change" onclick="change()">수정</div>
			</div>
			<div class="info">민경이</div>
		</div>
	
		
	</div><!-- gosumypage -->

<jsp:include page="footer.jsp"></jsp:include>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="resources/js/gosuprofile.js"></script>

</body>
</html>