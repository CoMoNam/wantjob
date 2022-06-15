<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, maximum-scale=1.0, minimum-scale=1, user-scalable=yes,initial-scale=1.0" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/requests.css">
</head>
<body>
	<jsp:include page="../header2.jsp"></jsp:include>
	<div class="requests-main">
		<div class="requests-title">
			<h1>받은 요청</h1>
		</div>
		<div class="requests">
			<ul class="requests-ul">
				<li class="requests-li">
					<div class="li-cont">
						<a href="requests_received">
							<div class="li-img"><img alt="" src="resources/images/남자1.jpeg"> </div>
							<div class="requests-info">
								<div class="user-id">gweg3242@naver.com</div>
								<div class="details">
									<div>카테고리 C</div>
									<div>지역: 서울</div>
									<div>
										<span class="on">온라인</span>
										<span>오프라인</span>
									</div>
								</div>
								<button class="li-del">삭제</button>
							</div>
						</a>
					</div>
				</li>
				
				<li class="requests-li">
					<div class="li-cont">
						<a href="#">
							<div class="li-img"><img alt="" src="resources/images/여자2.jpeg"> </div>
							<div class="requests-info">
								<div class="user-id">gweg3242@naver.com</div>
								<div class="details">
									<div>카테고리 C</div>
									<div>지역: 서울</div>
									<div>
										<span class="on">온라인</span>
										<span>오프라인</span>
									</div>
								</div>
								<button class="li-del">삭제</button>
							</div>
						</a>
					</div>
				</li>
			</ul>
		</div>
	</div>
<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>