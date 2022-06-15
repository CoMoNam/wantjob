<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>보드-바둑 설문</title>

<link rel="stylesheet" href="resources/css/categoryselect.css" />
</head>
<body overflow: hidden;>
<jsp:include page="../header.jsp"></jsp:include>
	<main class="main">
		<section class="banner">
			<div class="banner-image">
				<div class="banner-box">
					<h1>보드-바둑</h1><br>
					<h5>648</h5>
					<p>활동 고수</p>
				</div>
				<img src="resources/images/분야설문.png">
				
			</div>
		</section>
		<section class="asksection">
			<div class="ask-box">
				<div class="ask">
				<iframe src="useranw_test" id="myframe"></iframe>
				</div>
				<div class="text">
					<h4>숨고는 어떤 곳인가요?</h4><br>
					<p>서비스가 필요한 고객과 서비스를 제공하는 숨은 고수를 쉽고
					<br>빠르게 연결해드리는 전문가 매칭 서비스입니다.
					1분 내외의 요청서를 작성하면, 여러 고수님들이 맞춤형 견적을
					<br>보내드려요.<br>맘에 쏙 드는 고수의 맞춤형 서비스를 
					받아보세요.</p> <br>
					
					<h4>보컬 레슨 고수만을 모았다!</h4><br>
					<p>나만의 목소리로 내가 좋아하는 노래를 부르고 싶나요?
					<br>보컬 트레이닝을 받아보고 싶은데 어디서 받아야 할지 
					모르겠다면<br>요청서를 작성해보세요.선생님 프로필, 
					커리큘럼, 비용 비교하고 결정할 수 있어요.
					<br>숨고를 통해 지금 바로 보컬 레슨을 받아보세요!</p>
					
				</div>
			</div>
		</section>
		
	</main>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>