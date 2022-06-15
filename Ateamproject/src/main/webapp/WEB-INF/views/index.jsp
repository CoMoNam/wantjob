<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="resources/css/main.css" />
<title>배우고 싶으당</title>
</head>
<body>
	<jsp:include page="header2.jsp"></jsp:include>
	<input type="hidden" id="id" name="id" value="${kk.id}">
	<main class="main">
		<section class="banner">
			<div class="banner-image">
				<img src="resources/images/banner.png">
			</div>
		</section>
		<section class="category">
			<ul class="category-list">
				<li class="category-box">
					<a href="designservice"><div class="category-icon">
						<img src="resources/images/design.png" alt="design">
						<p>${kk.name}</p>
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
		<section class="gosu">
			<div class="gosu-list">	
				<div class="gosu-text">
					<h2>인기고수</h2>
				</div>
				<a href="gosuinfo">
					<div class="gosu-profile" href="#">
						<div class="gosu-photo">
							<img src="resources/images/여자1.jpeg">
						</div>
						<div class="li">
							<p class="name">이연희</p>
							<p class="job">운동</p>
							<img class="star" alt="별" src="resources/images/star.png">
							<span class="rate">5.0</span>
						</div>
					</div>
				</a>
				<a href="#">
					<div class="gosu-profile" href="#">
						<div class="gosu-photo">
							<img src="resources/images/여자2.jpeg">
						</div>
						<div class="li">
							<p class="name">김나영</p>
							<p class="job">보컬</p>
							<img class="star" alt="별" src="resources/images/star.png">
							<span class="rate">5.0</span>
						</div>
					</div>
				</a>
				<a href="#">
					<div class="gosu-profile" href="#">
						<div class="gosu-photo">
							<img src="resources/images/남자1.jpeg">
						</div>
						<div class="li">
							<p class="name">김주혁</p>
							<p class="job">투자</p>
							<img class="star" alt="별" src="resources/images/star.png">
							<span class="rate">5.0</span>
						</div>
					</div>
				</a>
				<a href="#">
					<div class="gosu-profile" href="#">
						<div class="gosu-photo">
							<img src="resources/images/남자2.jpeg">
						</div>
						<div class="li">
							<p class="name">송지환</p>
							<p class="job">디자인</p>
							<img class="star" alt="별" src="resources/images/star.png">
							<span class="rate">5.0</span>
						</div>
					</div>
				</a>
			</div>
			
		</section>
	</main>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>