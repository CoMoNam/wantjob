<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>gameservice</title>

<link rel="stylesheet" href="resources/css/service.css" />
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<main class="main">
		<section class="banner">
			<div class="banner-image">
				
				<div class="banner-box">
					
					<h1>SERVICE 게임</h1>
				</div>
				<img src="resources/images/게임배너.png">
				
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
					<a href="#"><div class="category-icon">
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
				<a href="lol">
					<div class="popular-image">
						<img src="resources/images/PC.png" alt="PC-롤">
					</div>
					<div class="popular-job">
						<h4>PC-롤</h4>
					</div>
					</a>
				</div>
				<div class="popular-box">
				<a href="badook">
					<div class="popular-image">
						<img src="resources/images/보드.png" alt="보드-바둑">
					</div>
					<div class="popular-job">
						<h4>보드-바둑</h4>
					</div>
					</a>
				</div>
				<div class="popular-box">
				<a href="fear">
					<div class="popular-image">
						<img src="resources/images/VR.png" alt="VR">
					</div>
					<div class="popular-job">
						<h4>VR-공포체험</h4>
					</div>
					</a>
				</div>
				<div class="popular-box">
				<a href="squid">
					<div class="popular-image">
						<img src="resources/images/오징어.png" alt="오징어-무궁화">
					</div>
					<div class="popular-job">
						<h4>오징어-무궁화</h4>
					</div>
					</a>
			</div>
		</section>
		<section class="all-service">
		<div class="h22"><h2>모든 분야</h2></div>
			<div class="service-box">
				<div class="service-aa" id="service">
					<li><span class="aa-title">PC</span></li>
					<li><a class="aa-li" href="lol">롤</a></li>
					<li><a class="aa-li" href="#">스타</a></li>
					<li><a class="aa-li" href="#">피파</a></li>
					<li><a class="aa-li" href="#">배그</a></li>
				</div>
				<div class="service-bb" id="service">
					<li><span class="bb-title">보드</span></li>
					<li><a class="bb-li" href="badook">바둑</a></li>
					<li><a class="bb-li" href="#">체스</a></li>
					<li><a class="bb-li" href="#">장기</a></li>
				</div>
				<div class="service-cc" id="service">
					<li><span class="cc-title">오징어</span></li>
					<li><a class="cc-li" href="squid">무궁화</a></li>
					<li><a class="cc-li" href="#">줄다리기</a></li>
				</div>
				<div class="service-cc" id="service">
					<li><span class="cc-title">VR</span></li>
					<li><a class="cc-li" href="fear">공포체험</a></li>
					<li><a class="cc-li" href="#">요리하기</a></li>
					<li><a class="cc-li" href="#">심해탐험</a></li>
				</div>
			
		</section>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>