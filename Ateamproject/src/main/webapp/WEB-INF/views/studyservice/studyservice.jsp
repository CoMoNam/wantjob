<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>studyservice</title>

<link rel="stylesheet" href="resources/css/service.css" />
</head>
<body>
<jsp:include page="../header.jsp"></jsp:include>
	<main class="main">
		<section class="banner">
			<div class="banner-image">
				
				<div class="banner-box">
					
					<h1>SERVICE 공부</h1>
				</div>
				<img src="resources/images/공부배너.png">
				
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
					<a href="#"><div class="category-icon">
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
				<a href="grammar">
					<div class="popular-image">
						<img src="resources/images/영어.png" alt="영어-문법">
					</div>
					<div class="popular-job">
						<h4>영어-문법</h4>
					</div>
					</a>
				</div>
				<div class="popular-box">
				<a href="special">
					<div class="popular-image">
						<img src="resources/images/공무원.png" alt="공무원-특수과목">
					</div>
					<div class="popular-job">
						<h4>공무원-특수과목</h4>
					</div>
					</a>
				</div>
				<div class="popular-box">
				<a href="accounting">
					<div class="popular-image">
						<img src="resources/images/전문직.png" alt="전문직-회계">
					</div>
					<div class="popular-job">
						<h4>전문직-회계</h4>
					</div>
					</a>
				</div>
				<div class="popular-box">
				<a href="javaa">
					<div class="popular-image">
						<img src="resources/images/개발.png" alt="개발-자바">
					</div>
					<div class="popular-job">
						<h4>개발-자바</h4>
					</div>
				</a>
			</div>
		</section>
		<section class="all-service">
		<div class="h22"><h2>모든 분야</h2></div>
			<div class="service-box">
				<div class="service-aa" id="service">
					<li><span class="aa-title">개발</span></li>
					<li><a class="aa-li" href="#">웹</a></li>
					<li><a class="aa-li" href="#">DB</a></li>
					<li><a class="aa-li" href="javaa">자바</a></li>
					<li><a class="aa-li" href="#">C언어</a></li>
				</div>
				<div class="service-bb" id="service">
					<li><span class="bb-title">영어</span></li>
					<li><a class="bb-li" href="grammar">문법</a></li>
					<li><a class="bb-li" href="#">읽기</a></li>
					<li><a class="bb-li" href="#">말하기</a></li>
				</div>
				<div class="service-cc" id="service">
					<li><span class="cc-title">공무원</span></li>
					<li><a class="cc-li" href="#">수학</a></li>
					<li><a class="cc-li" href="special">특수과목</a></li>
				</div>
				<div class="service-dd" id="service">
					<li><span class="dd-title">전문직</span></li>
					<li><a class="dd-li" href="#">세무</a></li>
					<li><a class="dd-li" href="accounting">회계</a></li>
				</div>
			
		</section>
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>