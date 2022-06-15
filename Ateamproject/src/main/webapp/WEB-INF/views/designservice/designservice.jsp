<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>designservice</title>

<link rel="stylesheet" href="resources/css/service.css" />
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<main class="main">
		<section class="banner">
			<div class="banner-image">
				
				<div class="banner-box">
					
					<h1>SERVICE 디자인</h1>
				</div>
				<img src="resources/images/디자인배너.png">
				
			</div>
		</section>
		<!-- 분야 추천 -->
		<section class="category">
			<ul class="category-list">
				<li class="category-box">
					<a href="#"><div class="category-icon">
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
							<a href="siyoung">
								<div class="popular-image" href="#">
									<img src="resources/images/시각.png" alt="시각-영상">
								</div>
								<div class="popular-job">
									<h4>시각-영상</h4>
								</div>
							</a>
							</div>
						<div class="popular-box">
							<a href="sankyung">
								<div class="popular-image">
									<img src="resources/images/산업.png" alt="산업-경제">
								</div>
								<div class="popular-job">
									<h4>산업-경제</h4>
								</div>
							</a>
							</div>
						<div class="popular-box">
							<a href="hwansil">
								<div class="popular-image">
										<img src="resources/images/환경.png" alt="환경-실외">
									</div>
									<div class="popular-job">
										<h4>환경-실외</h4>
									</div>
							</a>
							</div>
						<div class="popular-box">
							<a href="faui">
								<div class="popular-image">
										<img src="resources/images/패션.png" alt="패션-의류">
									</div>
									<div class="popular-job">
										<h4>패션-의류</h4>
									</div>
								</div>
							</a>
							</div>
		</section>
		<section class="all-service">
			<div class="h22"><h2>모든 분야</h2></div>
			<div class="service-box">
				<div class="service-aa" id="service">
					<li><span class="aa-title">시각</span></li>
					<li><a class="aa-li" href="siyoung">영상</a></li>
					<li><a class="aa-li" href="#">그래픽</a></li>
					<li><a class="aa-li" href="#">일러스트</a></li>
					<li><a class="aa-li" href="#">웹</a></li>
					<li><a class="aa-li" href="#">캐릭터</a></li>
				</div>
				<div class="service-bb" id="service">
					<li><span class="bb-title">산업</span></li>
					<li><a class="bb-li" href="sankyung">경제</a></li>
					<li><a class="bb-li" href="#">문화</a></li>
					<li><a class="bb-li" href="#">공학</a></li>
				</div>
				<div class="service-cc" id="service">
					<li><span class="cc-title">패션</span></li>
					<li><a class="cc-li" href="faui">의류</a></li>
					<li><a class="cc-li" href="#">가방</a></li>
				</div>
				<div class="service-dd" id="service">
					<li><span class="dd-title">환경</span></li>
					<li><a class="dd-li" href="hwansil">실외</a></li>
					<li><a class="dd-li" href="#">공간활용</a></li>
				</div>
			
		</section>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>