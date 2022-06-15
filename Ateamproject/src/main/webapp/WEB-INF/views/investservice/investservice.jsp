<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>investservice</title>

<link rel="stylesheet" href="resources/css/service.css" />
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<main class="main">
		<section class="banner">
			<div class="banner-image">
				
				<div class="banner-box">
					
					<h1>SERVICE 투자</h1>
				</div>
				<img src="resources/images/투자배너.png">
				
			</div>
		</section>
		<!-- 분야 추천 -->
		<section class="category">
			<ul class="category-list">
				<li class="category-box">
					<a href="designservice"><div class="category-icon">
						<img src="resources/images/design.png" alt="design">
						<p>디자인</p>
					</div></a>
				</li>
				<li class="category-box">
					<a href="workservice"><div class="category-icon">
						<img src="resources/images/exercise.png" alt="exercise">
						<p>운동</p>
					</div></a>
				</li>
				<li class="category-box">
					<a href="musicservice"><div class="category-icon">
						<img src="resources/images/vocal.png" alt="vocal">
						<p>음악<p>
					</div></a>
				</li>
				<li class="category-box">
					<a href="#"><div class="category-icon">
						<img src="resources/images/money.png" alt="money">
						<p>투자</p>
					</div></a>
				</li>
				<li class="category-box">
					<a href="studyservice"><div class="category-icon">
						<img src="resources/images/study.png" alt="study">
						<p>공부</p>
					</div></a>
				</li>
				<li class="category-box">
					<a href="gameservice"><div class="category-icon">
						<img src="resources/images/game.png" alt="game">
						<p>게임</p>
					</div></a>
				</li>
			</ul>
		</section>
		<!-- 인기분야 -->
			<div class="mii"><h2>인기분야 추천</h2></div>
		<section class="popular-sec">
			<div  class="popular">
				<div class="popular-box">
				<a href="seoul">
					<div class="popular-image">
						<img src="resources/images/부동산.png" alt="부동산-서울">
					</div>
					<div class="popular-job">
						<h4>부동산-서울</h4>
					</div>
					</a>
				</div>
				<div class="popular-box">
				<a href="actual1">
					<div class="popular-image">
						<img src="resources/images/주식.png" alt="주식-현물">
					</div>
					<div class="popular-job">
						<h4>주식-현물</h4>
					</div>
				</a>
				</div>
				<div class="popular-box">
				<a href="actual2">
					<div class="popular-image">
						<img src="resources/images/코인.png" alt="가상화폐">
					</div>
					<div class="popular-job">
						<h4>가상화폐-현물</h4>
					</div>
					</a>
				</div>
				<div class="popular-box">
				<a href="gold">
					<div class="popular-image">
						<img src="resources/images/금.png" alt="기타-금">
					</div>
					<div class="popular-job">
						<h4>기타-금</h4>
					</div>
				</a>
			</div>
		</section>
		<section class="all-service">
		<div class="h22"><h2>모든 분야</h2></div>
			<div class="service-box">
				<div class="service-aa" id="service">
					<li><span class="aa-title">부동산</span></li>
					<li><a class="aa-li" href="seoul">서울</a></li>
					<li><a class="aa-li" href="#">경기</a></li>
					<li><a class="aa-li" href="#">강원도</a></li>
					<li><a class="aa-li" href="#">경상도</a></li>
				</div>
				<div class="service-bb" id="service">
					<li><span class="bb-title">주식</span></li>
					<li><a class="bb-li" href="actual1">현물</a></li>
					<li><a class="bb-li" href="#">국내ETF</a></li>
					<li><a class="bb-li" href="#">해외</a></li>
				</div>
				<div class="service-cc" id="service">
					<li><span class="cc-title">가상화폐</span></li>
					<li><a class="cc-li" href="actual2">현물</a></li>
					<li><a class="cc-li" href="#">선물</a></li>
				</div>
				<div class="service-dd" id="service">
					<li><span class="dd-title">기타</span></li>
					<li><a class="dd-li" href="gold">금</a></li>
					<li><a class="dd-li" href="#">스타트업</a></li>
				</div>
			
		</section>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>