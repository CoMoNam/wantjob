<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>musicservice</title>

<link rel="stylesheet" href="resources/css/service.css" />
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<main class="main">
		<section class="banner">
			<div class="banner-image">
				
				<div class="banner-box">
					
					<h1>SERVICE 음악</h1>
				</div>
				<img src="resources/images/음악배너.png">
				
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
					<a href="#"><div class="category-icon">
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
					<a href="ballad">
					<div class="popular-image">
						<img src="resources/images/보컬.png" alt="보컬-발라드">
					</div>
					<div class="popular-job">
						<h4>보컬-발라드</h4>
					</div>
					</a>
				</div>
				<div class="popular-box">
					<a href="piano">
					<div class="popular-image">
						<img src="resources/images/악기.png" alt="악기-피아노">
					</div>
					<div class="popular-job">
						<h4>악기-피아노</h4>
					</div>
					</a>
				</div>
				<div class="popular-box">
					<a href="acousticguitar">
					<div class="popular-image">
						<img src="resources/images/기타.png" alt="기타-통기타">
					</div>
					<div class="popular-job">
						<h4>기타-통기타</h4>
					</div>
					</a>
				</div>
				<div class="popular-box">
					<a href="composing">
					<div class="popular-image">
						<img src="resources/images/작업.png" alt="작업-작곡">
					</div>
					<div class="popular-job">
						<h4>작업-작곡</h4>
					</div>
					</a>
				</div>
			</div>
		</section>
		<section class="all-service">
		<div class="h22"><h2>모든 분야</h2></div>
			<div class="service-box">
				<div class="service-aa" id="service">
					<li><span class="aa-title">보컬</span></li>
					<li><a class="aa-li" href="#">성악</a></li>
					<li><a class="aa-li" href="ballad">발라드</a></li>
					<li><a class="aa-li" href="#">락</a></li>
					<li><a class="aa-li" href="#">힙합</a></li>
				</div>
				<div class="service-bb" id="service">
					<li><span class="care-title">악기</span></li>
					<li><a class="bb-li" href="piano">피아노</a></li>
					<li><a class="bb-li" href="#">드럼</a></li>
					<li><a class="bb-li" href="#">바이올린</a></li>
				</div>
				<div class="service-bb" id="service">
					<li><span class="bb-title">기타</span></li>
					<li><a class="bb-li" href="#">일렉기타</a></li>
					<li><a class="bb-li" href="acousticguitar">통기타</a></li>
					<li><a class="bb-li" href="#">베이스기타</a></li>
				</div>
				<div class="service-bb" id="service">
					<li><span class="bb-title">작업</span></li>
					<li><a class="bb-li" href="composing">작곡</a></li>
					<li><a class="bb-li" href="#">작사</a></li>
					<li><a class="bb-li" href="#">녹음</a></li>
				</div>
			
		</section>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>