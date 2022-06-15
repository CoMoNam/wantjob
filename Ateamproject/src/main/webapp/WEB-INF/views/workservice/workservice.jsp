<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>workservice</title>

<link rel="stylesheet" href="resources/css/service.css" />
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<main class="main">
		<section class="banner">
			<div class="banner-image">
				
				<div class="banner-box">
					
					<h1>SERVICE 운동</h1>
				</div>
				<img src="resources/images/운동배너.png">
				
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
					<a href="#"><div class="category-icon">
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
					<a href="investservice"><div class="category-icon">
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
				<a href="golf">
					<div class="popular-image">
						<img src="resources/images/골프.png" alt="구기종목-골프">
					</div>
					<div class="popular-job">
						<h4>구기종목-골프</h4>
					</div>
				</a>
				</div>
				<div class="popular-box">
				<a href="health">
					<div class="popular-image">
						<img src="resources/images/헬스.png" alt="관리-헬스">
					</div>
					<div class="popular-job">
						<h4>관리-헬스</h4>
					</div>
				</a>
				</div>
				<div class="popular-box">
				<a href="yoga">
					<div class="popular-image">
						<img src="resources/images/요가.png" alt="관리-요가">
					</div>
					<div class="popular-job">
						<h4>관리-요가</h4>
					</div>
				</a>
				</div>
				<div class="popular-box">
				<a href="tennis">
					<div class="popular-image">
						<img src="resources/images/테니스.png" alt="구기종목-테니스">
					</div>
					<div class="popular-job">
						<h4>구기종목-테니스</h4>
					</div>
				</a>
				</div>
			</div>
		</section>
		<section class="all-service">
		<div class="h22"><h2>모든 분야</h2></div>
			<div class="service-box">
				<div class="service-aa" id="service">
					<li><span class="aa-title">구기종목</span></li>
					<li><a class="aa-li" href="#">축구</a></li>
					<li><a class="aa-li" href="#">야구</a></li>
					<li><a class="aa-li" href="#">농구</a></li>
					<li><a class="aa-li" href="tennis">테니스</a></li>
					<li><a class="aa-li" href="golf">골프</a></li>
					<li><a class="aa-li" href="#">볼링</a></li>
					<li><a class="aa-li" href="#">당구</a></li>
				</div>
				<div class="service-bb" id="service">
					<li><span class="care-title">관리</span></li>
					<li><a class="bb-li" href="yoga">요가</a></li>
					<li><a class="bb-li" href="health">헬스</a></li>
					<li><a class="bb-li" href="#">필라테스</a></li>
				</div>
				<div class="service-bb" id="service">
					<li><span class="bb-title">기타</span></li>
					<li><a class="bb-li" href="#">기계체조</a></li>
					<li><a class="bb-li" href="#">단거리달리기</a></li>
					<li><a class="bb-li" href="#"></a></li>
					
					
				</div>
			
		</section>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>